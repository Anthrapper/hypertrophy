import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Database/database.dart';

class ButtonController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
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

  goalSelection(String goal) async {
    final User user = auth.currentUser;
    final uid = user.uid;
    print(uid);
    print(goal);
    await HyperDb()
        .updateUser(field: 'goal', val: goal, uid: uid)
        .whenComplete(() => Get.offNamedUntil('/home', (route) => false));
  }
}
