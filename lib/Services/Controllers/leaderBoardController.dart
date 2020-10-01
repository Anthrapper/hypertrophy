import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LeaderBoardController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onInit() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .limit(5)
        .orderBy('reward_points', descending: true)
        .get();
    var list = querySnapshot.docs;
    var y = list.map((x) => x.data());
    for (var x in y) {
      print("${x['first_name']} ${x['last_name']}");
    }
    super.onInit();
  }
}
