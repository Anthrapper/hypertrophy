import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/quote.dart';
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
          .orderBy(
            'reward_points',
          )
          .snapshots();
      // list = querySnapshot.doc;
      // print(list);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: ListView(
          children: [
            _heading(),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 16.5, 20, 0),
                child: CustomCard(
                  widget: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: Get.height / 40),
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
                      _data(),
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

  Widget _data() {
    return Container(
      padding: EdgeInsets.only(top: Get.height / 45),
      child: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('users')
                .limit(5)
                .orderBy('reward_points', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot trainer = snapshot.data.docs[index];
                  Map getDocs = trainer.data();

                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2.2),
                    child: Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle_rounded,
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.hintText),
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${getDocs['first_name']} ${getDocs['last_name']}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          "${getDocs['reward_points'].toString()} points",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'M       T       W       T       F       S       S',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width / 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(Get.width / 7, 17, 10, 10),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            HexColorUtils.getColorFromHex(CustomColors.circle1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(Get.width / 7, 3, 10, 10),
                    child: Text(
                      'Training',
                      style: TextStyle(
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.hintText),
                          fontSize: 10),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(Get.width / 12, 17, 10, 10),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            HexColorUtils.getColorFromHex(CustomColors.circle2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(Get.width / 12, 3, 10, 10),
                    child: Text(
                      'Diet',
                      style: TextStyle(
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.hintText),
                          fontSize: 10),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(Get.width / 12, 17, 10, 10),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            HexColorUtils.getColorFromHex(CustomColors.circle3),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(Get.width / 12, 3, 10, 10),
                    child: Text(
                      'Sleep',
                      style: TextStyle(
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.hintText),
                          fontSize: 10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _heading() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 70),
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
    return Padding(
      padding: EdgeInsets.fromLTRB(20, Get.height / 22.5, 20, 5),
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
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: Text(
                  'John Williams',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: Get.width / 45,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
            QuotePart(),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, Get.height / 30, 13, 10),
                child: Text(
                  'Continue  >>',
                  style: TextStyle(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.primary),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
