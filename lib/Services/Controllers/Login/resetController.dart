// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hypertrophy/utilities/utils.dart';

// class ResetController extends GetxController {
//   // User user = await FirebaseAuth.instance.currentUser;
//   TextEditingController pass;
//   TextEditingController conf;

//   @override
//   void onInit() {
//     pass = TextEditingController();
//     conf = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     pass?.dispose();
//     conf?.dispose();

//     super.onClose();
//   }

//   sendResetLink(String email) async {

//     try {
//     void changePassword(String password) async{

//     //Pass in the password to updatePassword.
//     user.updatePassword(password).then((_){
//       print("Succesfull changed password");
//     }).catchError((error){
//       print("Password can't be changed" + error.toString());
//       //This might happen, when the wrong password is in, the user isn't found, or if the user hasn't logged in recently.
//     });
//   }
//     } catch (e) {
//       Get.snackbar(
//         'Error ',
//         e.message,
//         snackPosition: SnackPosition.BOTTOM,
//         colorText: Colors.white,
//         barBlur: 10,
//         backgroundColor: HexColorUtils.getColorFromHex(CustomColors.cardColor),
//         boxShadows: [
//           BoxShadow(
//             color: HexColorUtils.getColorFromHex(CustomColors.textfieldText),
//             blurRadius: 8.0,
//           ),
//         ],
//         icon: Icon(
//           Icons.error,
//           size: 30,
//           color: Colors.white,
//         ),
//       );
//     }
//   }
// }
