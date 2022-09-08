import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  bool eyesValue = true;
  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
