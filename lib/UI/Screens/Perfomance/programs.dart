

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

import '../../../utilities/utils.dart';

class ProgramPage extends StatefulWidget {
  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body:

      SafeArea(
        child: ListView(


          shrinkWrap: true,
          children:<Widget> [
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
          'PERFORMANCE',
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

          stream: FirebaseFirestore.instance.collection('programs').orderBy('Rating',descending: true).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState ==
                ConnectionState.waiting) {
              return Text("Loading");
            }
            return ListView.builder(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot program = snapshot.data.docs[index];
                Map getDocs = program.data();

                return SingleChildScrollView(
                  child: Container(
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
                                        getDocs['Rating'].toString()  ?? '',
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
                                        getDocs['Time'].toString()  ?? '',
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
                                      padding: EdgeInsets.only(left: pWidth / 20),
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
                                      padding: EdgeInsets.only(left: pWidth / 20),
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
                                      padding: EdgeInsets.only(left: pWidth / 20),
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
                  ),
                );
              },
            );
          }),
    );
  }
}
