import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/UI/Widgets/nav.dart';
import 'package:hypertrophy/utilities/utils.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class TrainingCards extends StatefulWidget {
  @override
  _TrainingCardsState createState() => _TrainingCardsState();
}

class _TrainingCardsState extends State<TrainingCards> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(
      child: GestureDetector(
        onTap: () {
          Get.to(Nav());
        },
        child: StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection('trainer').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }

              return ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot trainer = snapshot.data.docs[index];
                  Map getDocs = trainer.data();

                  return Container(
                    padding: EdgeInsets.fromLTRB(
                        0, Get.height / 28, Get.width / 20, 0),
                    child: InkWell(
                      onTap: () {
                        Get.to(Nav());
                      },
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
                                            color:
                                                HexColorUtils.getColorFromHex(
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
                                          getDocs['Rating'].toString() + ' (' ??
                                              '',
                                          style: GoogleFonts.lato(
                                            fontSize: Get.width / 28,
                                            letterSpacing: 1.2,
                                            color:
                                                HexColorUtils.getColorFromHex(
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
                                            color:
                                                HexColorUtils.getColorFromHex(
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
                                            color:
                                                HexColorUtils.getColorFromHex(
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
                                              color:
                                                  HexColorUtils.getColorFromHex(
                                                      CustomColors.background),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: pWidth / 50),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color:
                                                HexColorUtils.getColorFromHex(
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
                                              color:
                                                  HexColorUtils.getColorFromHex(
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
                            padding:
                                EdgeInsets.fromLTRB(10, 0, 0, pHeight / 50),
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
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
