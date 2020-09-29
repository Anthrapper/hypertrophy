import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/hexColor.dart';
import '../../Widgets/background.dart';
import 'package:search_widget/search_widget.dart';

class DietPage extends StatefulWidget {
  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),

          body: SafeArea(

              child: ListView(
                children: <Widget>[
                  _heading(),
                  _search(),
                  _cards(),
                  _cards(),
                  _cards(),
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
          'DIET',
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
  Widget _search(){
    final pHeight=MediaQuery.of(context).size.height;
    final pWidth=MediaQuery.of(context).size.width;
    return Padding(

      padding:  EdgeInsets.symmetric(vertical:Get.height/ 28, horizontal:Get.width/ 20),
      child: Container(

        child: TextField(

          style: TextStyle(fontSize: 16, color: HexColorUtils.getColorFromHex(CustomColors.whiteText)),
          decoration: InputDecoration(
            filled: true,
fillColor:  HexColorUtils.getColorFromHex(CustomColors.buttonColor) ,
            enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(pHeight*.02),
              borderSide: BorderSide(
                color:Colors.transparent,

              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(pHeight*.02),
            ),
            suffixIcon: Icon(Icons.clear,color: Colors.white70),

            border: InputBorder.none,
            hintText: "Search",
            contentPadding:  EdgeInsets.only(
              left:Get.width/ 16,
              right:Get.width/ 20,
              top:Get.height/ 50,
              bottom:Get.height/ 50,
            ),
          ),
        ),
      ),
    );

  }

  Widget _cards(){

    final pHeight=MediaQuery.of(context).size.height;
    final pWidth=MediaQuery.of(context).size.width;

    return Container(


      padding: EdgeInsets.fromLTRB(25,0,Get.width/ 20,0),

      child: Stack(
        children: <Widget>[
         Container(
           height: pHeight*0.18,
           width: pWidth,
           margin:  EdgeInsets.only( left:Get.width/ 30),
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             color:  HexColorUtils.getColorFromHex(CustomColors.background),
             borderRadius: BorderRadius.circular(8.0),
             boxShadow: <BoxShadow>[
               BoxShadow(
                 color: Colors.black12,
                 blurRadius: 10.0,
               ),
             ],
           ),
           child: Padding(
             padding: EdgeInsets.fromLTRB(Get.width/ 4,Get.height/ 30, 0, 0),
             child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text('Eggs',style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: HexColorUtils.getColorFromHex(
                       CustomColors.whiteText),
                   fontSize: Get.width / 21,
                   letterSpacing: 1.6,
                 ),
                ),
                 SizedBox(height: pHeight/90),
                 Text('100 kcal',
                   style:
                   GoogleFonts.sourceSansPro(
                     fontSize: Get.width/30,
                     color: HexColorUtils.getColorFromHex(CustomColors.whiteText),

                   ),


                 ),
                 SizedBox(height: pHeight/70),
                 Container(
                   decoration: BoxDecoration(
                     shape: BoxShape.rectangle,
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(pHeight*0.005),),

                   height: pHeight*.035,
                   width: pWidth*0.26,
                   child: Text('Tags',textAlign: TextAlign.center,),

                 ),

               ],
             ),
           ),
         ),
          Container(
            margin:  EdgeInsets.symmetric(vertical:Get.width/ 20),
            alignment: FractionalOffset.centerLeft,
            child: Image(
              image: AssetImage('assets/images/Rectangle 20.png'),

            ),
          ),
      ],
      ),
    );
  }
}

