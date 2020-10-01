import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

import '../../../utilities/utils.dart';

class TrainerPage extends StatefulWidget {
  @override
  _TrainerPageState createState() => _TrainerPageState();
}

class _TrainerPageState extends State<TrainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body:

          //   StreamBuilder<QuerySnapshot>(
          //     stream: FirebaseFirestore.instance.collection('trainer').snapshots(),
          //     builder: (context,snapshot){
          //       return ListView.builder(
          //         itemCount: snapshot.data.documents.length,
          //           itemBuilder: (context,index){
          //
          //           DocumentSnapshot trainer =snapshot.data.docs[index];
          //           Map getDocs = trainer.data();
          //
          //           return Column(
          //            children: [
          //              Text(getDocs['Customers'].toString()??'',style: TextStyle(
          //               color: Colors.white
          //             )),
          //             Text(getDocs['Rating'].toString()+'reviews'??'',style: TextStyle(
          //             color: Colors.white),
          //             ),
          // ],
          //           );
          //           },
          //       );
          //     },
          //   ),
          // );

          SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            _heading(),
            _search(),
            _cards(),
          ],
        ),
      ),
    );
  }

  Widget _heading() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 50),
      child: Center(
        child: Text(
          'TRAINING',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
            fontSize: Get.width / 19,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  Widget _search() {
    final pHeight = MediaQuery.of(context).size.height;
    // final pWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          Get.width / 20, Get.height / 28, Get.width / 20, 0),
      child: Container(
        child: TextField(
          style: TextStyle(
              fontSize: 16,
              color: HexColorUtils.getColorFromHex(CustomColors.whiteText)),
          decoration: InputDecoration(
            filled: true,
            fillColor: HexColorUtils.getColorFromHex(CustomColors.buttonColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(pHeight * .02),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(pHeight * .02),
            ),
            suffixIcon: Icon(Icons.clear, color: Colors.white70),
            border: InputBorder.none,
            hintText: "Search",
            contentPadding: EdgeInsets.only(
              left: Get.width / 16,
              right: Get.width / 20,
              top: Get.height / 50,
              bottom: Get.height / 50,
            ),
          ),
        ),
      ),
    );
  }

  Widget _cards() {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;

    return Container(
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('trainer')
              .orderBy('Rating', descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot trainer = snapshot.data.docs[index];
                Map getDocs = trainer.data();

                return Container(
                  padding: EdgeInsets.fromLTRB(
                      0, Get.height / 28, Get.width / 20, 0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: pHeight * 0.20,
                        width: pWidth,
                        margin: EdgeInsets.fromLTRB(40, pHeight / 50, 0, 0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.background),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, Get.height / 60, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: pWidth / 6),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.group,
                                      color: HexColorUtils.getColorFromHex(
                                          CustomColors.primary),
                                    ),
                                    Text(
                                      getDocs['Customers'].toString() ?? '',
                                      style: GoogleFonts.lato(
                                        fontSize: Get.width / 28,
                                        letterSpacing: 1.2,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.whiteText),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: pHeight / 90),
                              Padding(
                                padding: EdgeInsets.only(left: pWidth / 6),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: HexColorUtils.getColorFromHex(
                                          CustomColors.primary),
                                    ),
                                    Text(
                                      getDocs['Rating'].toString() + ' (' ?? '',
                                      style: GoogleFonts.lato(
                                        fontSize: Get.width / 28,
                                        letterSpacing: 1.2,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.whiteText),
                                      ),
                                    ),
                                    Text(
                                      getDocs['Review'].toString() +
                                              ' reviews)' ??
                                          '',
                                      style: GoogleFonts.lato(
                                        fontSize: Get.width / 28,
                                        letterSpacing: 1.2,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.whiteText),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: pHeight / 90),
                              Padding(
                                padding: EdgeInsets.only(left: pWidth / 15),
                                child: Text(
                                  getDocs['Name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColorUtils.getColorFromHex(
                                        CustomColors.whiteText),
                                    fontSize: Get.width / 20,
                                  ),
                                ),
                              ),
                              SizedBox(height: pHeight / 70),
                              Padding(
                                padding: EdgeInsets.only(left: pWidth / 15),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.hintText),
                                        borderRadius: BorderRadius.circular(
                                            pHeight * 0.005),
                                      ),
                                      height: pHeight * .025,
                                      width: pWidth * 0.15,
                                      child: Text(
                                        'Crossfit',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.sourceSansPro(
                                          fontSize: Get.width / 37,
                                          color: HexColorUtils.getColorFromHex(
                                              CustomColors.background),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: pWidth / 50),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.hintText),
                                        borderRadius: BorderRadius.circular(
                                            pHeight * 0.005),
                                      ),
                                      height: pHeight * .025,
                                      width: pWidth * 0.15,
                                      child: Text(
                                        'Crossfit',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.sourceSansPro(
                                          fontSize: Get.width / 37,
                                          color: HexColorUtils.getColorFromHex(
                                              CustomColors.background),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: pHeight * .16,
                        width: 100,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, pHeight / 50),
                        alignment: FractionalOffset.topLeft,
                        child: ClipPolygon(
                          sides: 6,
                          borderRadius: 5,
                          child: Image.network(
                            getDocs['img'],
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}
