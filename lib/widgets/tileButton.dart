import 'package:easy_dsa/model/constant.dart';
import 'package:flutter/material.dart';

class TileButton extends StatelessWidget {

  String buttontitle;
  IconData iconData;
  String ID;

  TileButton({this.iconData,this.buttontitle, this.ID});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ID);
      },
      child: Container(
        margin: kSidePadding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kSecondaryThemeColor2,
        ),
        child: Row(
          children: [
            SizedBox(width: 10,),
            Icon(iconData, color: Colors.white70, size: kInTextIconSize,),
            SizedBox(width: 5,),
            Expanded(child: Text(buttontitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: kDescriptionFontSize),))
          ],
        ),
      ),
    );
  }
}
