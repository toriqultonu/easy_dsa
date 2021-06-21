import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:demo_doc_vewer/model/constant.dart';
import 'package:flutter/material.dart';

class CodeView extends StatelessWidget {

  String code;
  double height;
  CodeView({this.code, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: kSidePadding,
      height: height,
      child: DartCodeViewer(code,

        backgroundColor: Colors.white,
        stringStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}
