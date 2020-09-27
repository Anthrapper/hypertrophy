import 'package:get/get.dart';

class ButtonController extends GetxController {
  var bulkUp = true.obs;
  var lean = true.obs;
  var loseWeight = true.obs;
  var strengthTraining = true.obs;
  var selected = true.obs;
  bulkUpFunction() {
    lean.value = true;
    bulkUp.value = false;
    loseWeight.value = true;
    strengthTraining.value = true;
    selected.value = false;
  }

  leanFunction() {
    lean.value = false;
    bulkUp.value = true;
    loseWeight.value = true;
    strengthTraining.value = true;
    selected.value = false;
  }

  loseFunction() {
    lean.value = true;
    bulkUp.value = true;
    loseWeight.value = false;
    strengthTraining.value = true;
    selected.value = false;
  }

  strengthFunction() {
    lean.value = true;
    bulkUp.value = true;
    loseWeight.value = true;
    strengthTraining.value = false;
    selected.value = false;
  }
}
