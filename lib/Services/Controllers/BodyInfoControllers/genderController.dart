import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Models/userModel.dart';
import 'package:hypertrophy/Services/Database/database.dart';

class GenderController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  HyperUser user = HyperUser();

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

  genderSelect(String gender) async {
    final User user = auth.currentUser;
    final uid = user.uid;
    print(uid);
    print(gender);
    await HyperDb()
        .updateUser(field: 'gender', val: gender, uid: uid)
        .whenComplete(() => Get.toNamed('bodyinfo'));
  }
}
