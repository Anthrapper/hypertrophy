import 'package:get/get.dart';

class GenderController extends GetxController {
  var maleSelected = true.obs;
  var femaleSelected = true.obs;
  var selected = true.obs;
  maleOntap() {
    maleSelected.value = false;
    femaleSelected.value = true;
    selected.value = false;
  }

  femaleOntap() {
    femaleSelected.value = false;
    maleSelected.value = true;
    selected.value = false;
  }
}
