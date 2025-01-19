import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/features/trips/trip_dates/trip_dates_screen.dart';
import 'package:rich_food/modules/sales_man/models/day_trip_model.dart';
import 'package:rich_food/utils/helpers/cacheKeys.dart';

class TourController extends GetxController {
  late DayTripModel dayTripModel;
  int index = 0;
  late GetStorage storage;

  List dataText = [
    "لبدء الرحلة، اضغط على الزر الموجود في الأسفل.",
    "يمكنك الضغط على إيقاف، لإيقاف رحلتك مؤقتاً في حال تعرضك لظرف ما، وعند الاستئناف، سيتم إكمال الرحلة وإزاحة مواعيد التسليم لدى الزبائن بمقدار مدة التوقف.",
    "لإنهاء الرحلة تماماً، قم بالضغط على زر إنهاء، فيتم إنهاء الرحلة، ولا يمكن إعادة بدئها أو استكمالها، ويمكن بعدها البدء بالرحلة التالية.",
  ];

  @override
  void onInit() {
    super.onInit();
    storage = GetStorage();
    if (Get.arguments != null) {
      dayTripModel = Get.arguments;
    }
  }

  next() {
    if (index < 2) {
      index++;
      update();
    } else {
      storage.write(CacheKeys.backTwo, true);
      Get.off(() => TripDatesScreen(
            dayTripModel: dayTripModel,
          ))?.then((value) {
        storage.write(CacheKeys.showTour, true);
      });
    }
  }
}
