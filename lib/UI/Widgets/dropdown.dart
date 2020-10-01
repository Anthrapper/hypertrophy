import 'package:flutter/material.dart';
import 'package:hypertrophy/utilities/utils.dart';

class CustomDropDown extends StatelessWidget {
  final String dText;
  final String drValue;
  final List data;
  final Function onChanged;
  final String hint;
  CustomDropDown(
      {this.onChanged, this.drValue, this.data, this.dText, this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Container(
        decoration: BoxDecoration(
          color: HexColorUtils.getColorFromHex(CustomColors.background),
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.fromLTRB(10, 0, 1, 1),
        child: DropdownButton(
          hint: Text(
            hint,
            style: TextStyle(
                fontSize: 11,
                color: HexColorUtils.getColorFromHex(CustomColors.hintText)),
          ),
          isExpanded: false,
          autofocus: false,
          // icon: Icon(Icons.arrow_drop_down_sharp),
          iconEnabledColor:
              HexColorUtils.getColorFromHex(CustomColors.hintText),
          iconDisabledColor: Colors.grey[200],
          iconSize: 20,
          dropdownColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
          value: drValue,
          items: data.map((item) {
            return DropdownMenuItem(
              child: Text(
                item[dText],
                style: TextStyle(
                  color: HexColorUtils.getColorFromHex(CustomColors.cardColor),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: item['id'].toString(),
            );
          }).toList(),
          onChanged: (String val) {
            onChanged(val);
          },
        ),
      ),
    );
  }
}
