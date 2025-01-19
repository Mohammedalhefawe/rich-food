import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../shared/widgets/snackBar.dart';
import '../../../../utils/connection_checker.dart';
import '../../../../utils/helpers/api/api_constants.dart';
import '../../../../utils/helpers/cacheKeys.dart';
import '../../../../utils/helpers/api/dio_helper.dart';
import '../../models/error_model.dart';
import '../../models/price_model.dart';

class PriceListController extends GetxController {
  bool _isError = false;

  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
    update();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  List<PriceModel> _priceList = [];

  List<PriceModel> get priceList => _priceList;

  set priceList(List<PriceModel> value) {
    _priceList = value;
    update();
  }

  List<PriceModel> _filteredPriceList = [];

  List<PriceModel> get filteredPriceList => _filteredPriceList;

  set filteredPriceList(List<PriceModel> value) {
    _filteredPriceList = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  final GetStorage storage = GetStorage();

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    int branchId = storage.read(CacheKeys.branchId) ?? 0;
    String token = storage.read(CacheKeys.token);
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
            url: '${ApiConstants.baseUrl}product/list-prices',
            bearerToken: token,
            query: {
              'branch_id': branchId,
            });
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          if (responseData.containsKey('data')) {
            List<dynamic> list = responseData['data'];
            print('price list: $list');
            if (list.isEmpty) {
              priceList.clear();
              filteredPriceList.clear();
              return true;
            }
            priceList = list.map((e) => PriceModel.fromJson(e)).toList();
            filteredPriceList = priceList;
            return true;
          } else {
            showMessage('Unexpected response structure', false);
            return false;
          }
          // List<dynamic> list = responseData['data'];
          // print(list);
          // priceList = list.map((e) => PriceModel.fromJson(e)).toList();

          return true;
        } else {
          // Handle failure
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.message}', false);
          }
          return false;
        }
      } catch (e) {
        // Handle error
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

  void runFilter(String value) {
    if (value.isNotEmpty) {
      filteredPriceList =
          priceList.where((element) => element.name.contains(value)).toList();
    } else {
      filteredPriceList = priceList;
    }
  }
}
