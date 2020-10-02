// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hypertrophy/Services/Controllers/Login/resetController.dart';
// import 'package:hypertrophy/UI/Widgets/widgets.dart';
// import 'package:hypertrophy/utilities/utils.dart';

// class ResetPage extends StatelessWidget {
//   final ResetController _resetController = Get.put(ResetController());
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             _heading(),
//             _resetForm(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _resetForm() {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: EdgeInsets.fromLTRB(20, Get.height / 6, 20, 0),
//         child: CustomCard(
//           widget: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top: Get.height / 25),
//                 child: Center(
//                   child: Text(
//                     'RESET PASSWORD',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color:
//                           HexColorUtils.getColorFromHex(CustomColors.whiteText),
//                       fontSize: Get.width / 21,
//                       letterSpacing: 1.6,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.fromLTRB(13, Get.height / 25, 13, 10),
//                 child: CustomTextField(
//                   hintText: 'New Password',
//                   controller: _resetController.pass,
//                   secureText: true,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(13, 20, 13, 10),
//                 child: CustomTextField(
//                   controller: _resetController.conf,
//                   hintText: 'Confirm Password',
//                   secureText: true,
//                   // suffix: FaIcon(
//                   //   Icons.remove_red_eye_outlined,
//                   //   color: HexColorUtils.getColorFromHex(CustomColors.hintText),
//                   // ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   if (_formKey.currentState.validate()) {
//                     if (_resetController.conf.text ==
//                         _resetController.pass.text) {
//                       Loading().showLoading();
//                     } else {
//                       Get.snackbar(
//                         'Error ',
//                         'Password does not match',
//                         snackPosition: SnackPosition.BOTTOM,
//                         colorText: Colors.white,
//                         barBlur: 10,
//                         backgroundColor: HexColorUtils.getColorFromHex(
//                             CustomColors.cardColor),
//                         boxShadows: [
//                           BoxShadow(
//                             color: HexColorUtils.getColorFromHex(
//                                 CustomColors.textfieldText),
//                             blurRadius: 8.0,
//                           ),
//                         ],
//                         icon: Icon(
//                           Icons.error,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                       );
//                     }
//                   }
//                 },
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(13, 25, 13, Get.height / 22),
//                   child: CustomButton(
//                     text: 'RESET',
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _heading() {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height / 50),
//       child: Center(
//         child: Text(
//           'FORGOT PASSWORD',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
//             fontSize: Get.width / 28,
//             letterSpacing: 1.6,
//           ),
//         ),
//       ),
//     );
//   }
// }
