import 'package:flutter/material.dart';

class ImageViewData extends StatelessWidget {

  String imageLink;

  ImageViewData({this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Image.asset(imageLink, fit: BoxFit.cover,),
      ),
    );
  }
}
