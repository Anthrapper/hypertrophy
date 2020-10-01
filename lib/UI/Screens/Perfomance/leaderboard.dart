import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  Stream<QuerySnapshot> querySnapshot;
  List<QueryDocumentSnapshot> list;

  @override
  void initState() {
    setState(() {
      querySnapshot = FirebaseFirestore.instance
          .collection('users')
          .orderBy('reward_points', descending: true)
          .snapshots();
      // list = querySnapshot.doc;
      // print(list);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: ListView(
          children: [
            _heading(),
            SizedBox(
              height: Get.height / 2.5,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 10.5, 20, 0),
                child: CustomCard(
                  widget: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: Get.height / 25),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'LEADER BOARD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: HexColorUtils.getColorFromHex(
                                    CustomColors.whiteText),
                                fontSize: Get.width / 25,
                                letterSpacing: 1.6,
                              ),
                            ),
                          ),
                        ),
                      ),
                      StreamBuilder<QuerySnapshot>(
                        stream: querySnapshot,
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text('Something went wrong');
                          }

                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Text("Loading");
                          }

                          return SizedBox(
                            height: Get.height / 5,
                            width: Get.width,
                            child: new ListView(
                              children: snapshot.data.docs
                                  .map((DocumentSnapshot document) {
                                return new Row(
                                  children: [
                                    new Text(
                                        "${document.data()['first_name']} ${document.data()['last_name']}"),
                                    Text(
                                        "${document.data()['reward_points']} "),
                                  ],
                                );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomWidget(),
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
          'PERFOMANCE',
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

  Widget bottomWidget() {
    return SizedBox(
      height: Get.height / 2.5,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, Get.height / 10.5, 20, 0),
        child: CustomCard(
          widget: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: Get.height / 25),
                child: Center(
                  child: Text(
                    'Double Your Stamina in Just 6 Weeks with Absolute Ease',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                      fontSize: Get.width / 30,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(13, Get.height / 25, 13, 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
