import 'package:flutter/material.dart';

class NetworkImageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Image.network('https://neilpatel.com/wp-content/uploads/2017/09/image-editing-tools.jpg '),
      ),
    );
  }
}
