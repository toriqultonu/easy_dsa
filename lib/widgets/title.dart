import 'package:demo_doc_vewer/model/constant.dart';
import 'package:flutter/material.dart';

class DataTitle extends StatelessWidget {

  String title;

  DataTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: kSidePadding,
      child: Text(
        title, style: TextStyle( fontSize: kTitleFontSize, color: kTitleFontColor, fontWeight: kTitleFontWeight, decoration: TextDecoration.underline),
      ),
    );
  }
}
