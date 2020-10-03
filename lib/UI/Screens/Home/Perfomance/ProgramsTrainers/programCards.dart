import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/utilities/utils.dart';

class ProgramCards extends StatefulWidget {
  @override
  _ProgramCardsState createState() => _ProgramCardsState();
}

class _ProgramCardsState extends State<ProgramCards> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('programs')
              .orderBy('Rating', descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            if (snapshot.hasData) {
              return ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot program = snapshot.data.docs[index];
                  Map getDocs = program.data();

                  return Container(
                    padding: EdgeInsets.fromLTRB(
                        0, Get.height / 28, Get.width / 20, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: pHeight * 0.22,
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
                                  padding: EdgeInsets.only(left: pWidth / 3),
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
                                      SizedBox(width: 20),
                                      Icon(
                                        Icons.star_border,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.primary),
                                      ),
                                      Text(
                                        getDocs['Rating'].toString() ?? '',
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
                                  padding: EdgeInsets.only(left: pWidth / 3),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: HexColorUtils.getColorFromHex(
                                            CustomColors.primary),
                                      ),
                                      Text(
                                        getDocs['Time'].toString() ?? '',
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: pWidth / 20),
                                      child: Text(
                                        'Double your Stamina in',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: HexColorUtils.getColorFromHex(
                                              CustomColors.whiteText),
                                          fontSize: Get.width / 25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: pWidth / 20),
                                      child: Text(
                                        'Just 6 Weeks with ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: HexColorUtils.getColorFromHex(
                                              CustomColors.whiteText),
                                          fontSize: Get.width / 25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: pWidth / 20),
                                      child: Text(
                                        'Absolute Ease',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: HexColorUtils.getColorFromHex(
                                              CustomColors.whiteText),
                                          fontSize: Get.width / 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: pHeight * .16,
                          padding: EdgeInsets.fromLTRB(20, 0, 0, pHeight / 50),
                          alignment: FractionalOffset.topLeft,
                          child: Image.network(getDocs['img']),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
