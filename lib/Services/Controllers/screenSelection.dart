import 'package:get/get.dart';

class ScreenController extends GetxController {
  var programs = false.obs;
  var trainers = true.obs;
  programsClicked() {
    print('programs clicked');
    programs.value = false;
    trainers.value = true;
  }

  trainersClicked() {
    print('trainers clicked');
    programs.value = true;

    trainers.value = false;
  }
}
