import 'package:flutter/material.dart';

class ImageViewData extends StatelessWidget {

  String imageLink;

  ImageViewData({this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Image.asset(imageLink, fit: BoxFit.cover,),
      ),
    );
  }
}
