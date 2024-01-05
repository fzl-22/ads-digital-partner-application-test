import 'dart:async';

import 'package:ads_digital_partner_application_test/config/navigation/routes.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  final isSuccess = false.obs;
  List<String> numberFieldValues = List.filled(6, "").obs;
  Timer? _timer;
  int remainingSeconds = 1;
  final time = '00.00'.obs;

  @override
  void onReady() {
    _startTimer(60);
    super.onReady();
  }

  @override
  void onClose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.onClose();
  }

  void updateNumberFieldValue(int index, String value) {
    numberFieldValues[index] = value;
  }

  void onSubmitCode() {
    String submittedCode = numberFieldValues.fold(
        "", (previousValue, element) => previousValue + element);

    if (submittedCode.length != 6) {
      getSnackbar("Incomplete or wrong verification code");
      return;
    }

    isSuccess.value = true;
  }

  void _startTimer(int seconds) {
    if (_timer != null) {
      _timer!.cancel();
    }

    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    _timer = Timer.periodic(
      duration,
      (Timer timer) {
        if (remainingSeconds == -1) {
          timer.cancel();
        } else {
          int minutes = remainingSeconds ~/ 60;
          int seconds = (remainingSeconds % 60);
          time.value =
              "${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}";
          remainingSeconds--;
        }
      },
    );
  }

  void onResendCode() {
    _startTimer(60);
  }

  void getSnackbar(String message) {
    Get.showSnackbar(
      GetSnackBar(
        message: message,
        duration: const Duration(
          seconds: 3,
        ),
      ),
    );
  }

  void onContinue() {
    Get.offNamed(Routes.LOGIN);
  }
}
