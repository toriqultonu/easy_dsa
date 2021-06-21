import 'package:easy_dsa/model/constant.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {

  String description;

  Description({this.description});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: kSidePadding,
      child: Text(
        description, style: TextStyle(fontSize: kDescriptionFontSize,  color: kDescriptionFontColor),
      ),
    );
  }
}
