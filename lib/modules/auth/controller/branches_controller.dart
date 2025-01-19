import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/customer/features/cart/cart_controller.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/utils/helpers/cacheKeys.dart';
import '../../../../shared/widgets/snackBar.dart';
import '../../../../utils/connection_checker.dart';
import '../../../../utils/helpers/api/api_constants.dart';
import '../../../../utils/helpers/api/dio_helper.dart';
import '../../sales_man/features/drawer/drawer_salesman_controller.dart';
import '../../sales_man/models/branch_model.dart';
import '../../sales_man/models/error_model.dart';

class BranchesController extends GetxController {
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

  List<Branch> _branchesList = [];

  List<Branch> get branchesList => _branchesList;

  set branchesList(List<Branch> value) {
    _branchesList = value;
    update();
  }

  Branch _currentBranch =
      Branch(id: 0, name: '', city: CityModel(id: 0, name: ''));
  Branch get currentBranch => _currentBranch;

  set currentBranch(Branch value) {
    _currentBranch = value;
    update();
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
    if (storage.read(CacheKeys.branchId) != null) {
      await setCurrentBranch(Branch(
          id: storage.read(CacheKeys.branchId),
          name: storage.read(CacheKeys.branchName),
          city: CityModel(
              id: storage.read(CacheKeys.cityID),
              name: storage.read(CacheKeys.city))));
    }
  }

  final GetStorage storage = GetStorage();

  Future<bool> fetchData() async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    String token = storage.read(CacheKeys.token);
    bool isCustomer = (storage.read(CacheKeys.role) == 'customer');
    if (isDeviceConnected) {
      try {
        final response = await DioHelper.getData(
          url: isCustomer
              ? ApiConstants.customerBranchesUrl
              : ApiConstants.salesBranchesUrl,
          bearerToken: token,
        );
        print('branches response: $response');
        if (response?.statusCode == 200) {
          // Handle successful
          Map<String, dynamic> responseData = response!.data;
          List<dynamic> list = responseData['data'];
          if (list.isEmpty) {
            branchesList = [];
            currentBranch = Branch(
                id: 0,
                name: 'لا يوجد فرع',
                city: CityModel(
                  id: 0,
                  name: '',
                ));
            isError = false;
            return false;
          } else // if there is branches
          {
            print('branches list: $list');
            branchesList = list.map((e) {
              print(e);
              return Branch.fromJson(e);
            }).toList();

            if (storage.read(CacheKeys.branchId) == null) {
              await setCurrentBranch(branchesList.first);
            }
            await Future.wait([
              storage.write(CacheKeys.cityID, currentBranch.city.id),
              storage.write(CacheKeys.city, currentBranch.city.name),
            ]);

            // await saveBranchesToCache(branchesList);

            return true;
          }
        } else {
          // Handle failure
          isError = true;
          if (response != null) {
            final errorModel = ErrorModel.fromJson(response.data);
            showMessage('request failed: ${errorModel.data}', false);
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

  Future<void> setCurrentBranch(Branch branch) async {
    print('current branch: ${branch.id}');
    currentBranch = branch;
    storage.write(CacheKeys.branchName, branch.name);
    storage.write(CacheKeys.branchId, branch.id);
    bool isCustomer = (storage.read(CacheKeys.role) == 'customer');
    print(isCustomer);
    if (isCustomer) {
      if (Get.isRegistered<DrawerCustomerController>()) {
        // Get.find<DrawerCustomerController>().update();
      } else {
        Get.put(DrawerCustomerController()).update();
      }
      Get.find<CartController>().clearCart();
    } else {
      Get.find<DrawerSalesmanController>().update();
    }
    update();
  }

/*
  Future<void> saveBranchesToCache(List<Branch> branches) async {
    final List<Map<String, dynamic>> branchesJson = branches.map((branch) => Branch.toJson()).toList();
    final String encodedData = json.encode(branchesJson);
    await storage.write(CacheKeys.allBranches, encodedData);
  }
*/
/*
  Future<List<Branch>> getBranchesFromCache() async {
    final String? encodedData = storage.read(CacheKeys.allBranches);

    if (encodedData != null) {
      final List<dynamic> decodedData = json.decode(encodedData);
      return decodedData.map((json) => Branch.fromJson(json)).toList();
    }

    return [];
  }
*/
}
