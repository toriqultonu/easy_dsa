import 'package:demo_doc_vewer/views/home.dart';
import 'package:flutter/material.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Array.id: (context) => Array(),
        LinkedList.id: (context) => LinkedList(),
        StackView.id: (context) => StackView(),
        Queue.id: (context) => Queue(),
        Tree.id: (context) => Tree(),
        HashTable.id: (context) => HashTable(),
        BidirectionalList.id: (context) => BidirectionalList(),
        BinarySearchTree.id: (context) => BinarySearchTree(),

      },
    );
  }
}
