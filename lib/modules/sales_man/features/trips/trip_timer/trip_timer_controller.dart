import 'dart:async';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../shared/enums.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/connection_checker.dart';
import '../../../../../utils/helpers/api/api_constants.dart';
import '../../../../../utils/helpers/api/dio_helper.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../models/error_model.dart';

class TripTimerController extends GetxController {
  final Stopwatch tripTimer = Stopwatch();
  final Stopwatch breakTimer = Stopwatch();
  DateTime? startTime;
  Duration? savedElapsed;
  Timer? _uiTimer;

  bool _hasStarted = false;
  bool get hasStarted => _hasStarted;

  TripCase _tripCase = TripCase.non;
  TripCase get tripCase => _tripCase;
  set tripCase(TripCase value) {
    _tripCase = value;
    update();
  }

  set hasStarted(bool value) {
    _hasStarted = value;
    update();
  }

  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;
  set isPlaying(bool value) {
    _isPlaying = value;
    update();
  }

  bool _isExpanded = false;
  bool get isExpanded => _isExpanded;
  set isExpanded(bool value) {
    _isExpanded = value;
    update();
  }

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

  // TripCase _tripCase = TripCase.non;
  // TripCase get tripCase => _tripCase;
  // set tripCase(TripCase value) {
  //   _tripCase = value;
  //   update();
  // }

  final GetStorage storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    checkTripStatus();
    _startUITimer();
  }

  @override
  void onClose() {
    tripTimer.stop();
    breakTimer.stop();
    _uiTimer?.cancel();
    super.onClose();
  }

  Future<bool> updateStatus(TripStatus status, {String? duration}) async {
    isLoading = true;
    isError = false;
    bool isDeviceConnected = await InternetChecker.instance.hasConnection;
    storage.write(CacheKeys.tripStatus, status.name); // Write status to cache
    if (isDeviceConnected) {
      String token = storage.read(CacheKeys.token) ?? "";
      int branchId = storage.read(CacheKeys.branchId) ?? 0;
      try {
        final response = await DioHelper.postData(
          url: '${ApiConstants.baseUrl}tracing/${status.name}',
          bearerToken: token,
          data: {
            'duration': duration ?? tripTimer.elapsed.inSeconds.toString(),
            'branch_id': branchId.toString(),
          },
        );
        if (response?.statusCode == 200) {
          isLoading = false;
          return true;
        } else {
          ErrorModel error = ErrorModel.fromJson(response?.data);
          showMessage(error.message, false);
          isError = true;
          isLoading = false;
          return false;
        }
      } catch (e) {
        showMessage('An error occurred', false);
        isError = true;
        isLoading = false;
        return false;
      }
    } else {
      showMessage('No internet connection', false);
      isError = true;
      isLoading = false;
      return false;
    }
  }

  void startTrip() {
    startTime = DateTime.now();
    tripTimer.start();
    hasStarted = true;
    isPlaying = true;
    updateStatus(TripStatus.next,
        duration: tripTimer.elapsed.inSeconds.toString() ?? '');

    update();
  }

  void pauseTrip() {
    tripTimer.stop();
    isPlaying = false;
    updateStatus(TripStatus.pause,
        duration: tripTimer.elapsed.inSeconds.toString());
  }

  void resumeTrip() {
    tripTimer.start();
    isPlaying = true;
    updateStatus(TripStatus.resume,
        duration: tripTimer.elapsed.inSeconds.toString());
  }

  void endTrip() {
    tripTimer.stop();
    hasStarted = false;
    isPlaying = false;
    updateStatus(TripStatus.stop,
        duration: tripTimer.elapsed.inSeconds.toString());
  }

  void onExpandTimer() {
    isExpanded = !isExpanded;
  }

  Future<void> _saveStartTime() async {
    await storage.write(CacheKeys.startTime, startTime.toString());
    await storage.write(
        CacheKeys.savedElapsed, tripTimer.elapsed.inSeconds.toString());
  }

  String getFormattedElapsedTime() {
    final duration = tripTimer.elapsed;
    return duration.toString().split('.').first.padLeft(8, '0');
  }

  Future<void> loadStartTime() async {
    final startTimeString = await storage.read(CacheKeys.startTime);
    final savedElapsedSeconds = await storage.read(CacheKeys.savedElapsed);

    if (startTimeString != null && savedElapsedSeconds != null) {
      startTime = DateTime.parse(startTimeString);
      savedElapsed = Duration(seconds: int.parse(savedElapsedSeconds));
      Duration additionalElapsed = DateTime.now().difference(startTime!);
      savedElapsed = savedElapsed! + additionalElapsed;
    }
  }

  void checkTripStatus() {
    String status = storage.read(CacheKeys.tripStatus) ?? 'none';
    loadStartTime();

    switch (status) {
      case 'none':
        hasStarted = false;
        isPlaying = false;
        isExpanded = false;
        if (tripTimer.isRunning) tripTimer.stop();
        tripTimer.reset();
        break;
      case 'start':
      case 'resume':
      case 'next':
        hasStarted = true;
        isPlaying = true;
        isExpanded = true;
        if (!tripTimer.isRunning) tripTimer.start();
        break;
      case 'pause':
        hasStarted = true;
        isPlaying = false;
        isExpanded = true;
        if (tripTimer.isRunning) tripTimer.stop();
        break;
      case 'stop':
      case 'end':
        hasStarted = false;
        isPlaying = false;
        isExpanded = false;
        tripTimer.stop();
        tripTimer.reset();
        break;
    }
    update();
  }

  void _startUITimer() {
    _uiTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      update();
    });
  }
}
