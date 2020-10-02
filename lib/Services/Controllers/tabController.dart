import 'package:get/get.dart';

class TabControl extends GetxController {
  var details = false.obs;
  var content = true.obs;
  detailsClicked() {
    print('details clicked');
    details.value = false;
    content.value = true;
  }

  contentClicked() {
    print('content clicked');
    details.value = true;

    content.value = false;
  }
}
