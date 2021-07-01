import 'package:flutter/material.dart';

class NetworkImage extends StatelessWidget {
  String imageLink;

  NetworkImage({this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Image.network(imageLink, fit: BoxFit.cover,),
      ),
    );
  }
}