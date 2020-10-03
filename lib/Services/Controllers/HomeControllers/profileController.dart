import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Database/database.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  var name = ''.obs;
  var goal = ''.obs;
  var pic = ''.obs;
  @override
  void onInit() {
    userInfo(_auth.currentUser.uid);
    super.onInit();
  }

  userInfo(String groupId) async {
    DocumentSnapshot variable =
        await FirebaseFirestore.instance.collection('users').doc(groupId).get();
    var list = variable.data();
    print(list);
    print(list['goal']);
    name.value = list['first_name'] + ' ' + list['last_name'];
    print(name);
    pic.value = list['pic'];
    print(pic);
    goal.value = list['goal'];
  }

  uploadImage() async {
    final _picker = ImagePicker();
    final _storage = FirebaseStorage.instance;
    PickedFile img;

    img = await _picker.getImage(source: ImageSource.gallery);
    var file = File(img.path);
    if (img != null) {
      var snapshot = await _storage
          .ref()
          .child('profilePictures/${_auth.currentUser.uid}')
          .putFile(file)
          .onComplete;
      var downloadUrl = await snapshot.ref.getDownloadURL();
      print(downloadUrl);
      await HyperDb()
          .updateUser(
              field: 'pic', val: downloadUrl, uid: _auth.currentUser.uid)
          .whenComplete(() => userInfo(_auth.currentUser.uid));
    } else {
      print('no pic selected');
    }
  }
}
