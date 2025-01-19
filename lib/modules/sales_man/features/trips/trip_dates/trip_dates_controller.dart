import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/models/trip_dates_model.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';

import '../../../models/error_model.dart';

class TripDatesController extends GetxController {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  bool _isError = false;

  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
    update();
  }

  List<TripDatesModel> _tripDatesList = [];

  List<TripDatesModel> get tripDatesList => _tripDatesList;

  set tripDatesList(List<TripDatesModel> value) {
    _tripDatesList = value;
    update();
  }

  int tripId = 0;

  String searchText = '';

  resetSearch() {
    searchText = '';
  }

  final GetStorage storage = GetStorage();

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;

    if (isDeviceConnected) {
      try {
        String token = storage.read(CacheKeys.token) ?? "";
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}trip/trip-dates/$tripId',
            bearerToken: token,
            query: {
              's': searchText,
            });

        if (response?.statusCode == 200) {
          Map<String, dynamic> responseData = response!.data;
          List<dynamic> list = responseData['data']['data'];
          List<TripDatesModel> fetchedTrips =
              list.map((e) => TripDatesModel.fromJson(e)).toList();
          tripDatesList = fetchedTrips;
          // log("${list}" );
          return true;
        } else {
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('Trips Dates failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        isError = true;
        showMessage('Error: $e', false);
        return false;
      } finally {
        isLoading = false;
      }
    } else {
      isError = true;
      showMessage('لا يوجد اتصال بالانترنت', false);
      isLoading = false;
      return false;
    }
  }
}
