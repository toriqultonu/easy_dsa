import 'package:easy_dsa/views/array/arrayView.dart';
import 'package:easy_dsa/views/hashTableView.dart';
import 'package:easy_dsa/views/home.dart';
import 'package:easy_dsa/views/linkedList/bidirectional.dart';
import 'package:easy_dsa/views/linkedList/binarySearchTree.dart';
import 'package:easy_dsa/views/linkedList/linkedListView2.dart';
import 'package:easy_dsa/views/queue/queueView.dart';
import 'package:easy_dsa/views/stack/stackView2.dart';
import 'package:easy_dsa/views/tree/treeView.dart';

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
        LinkedList2.id: (context) => LinkedList2(),
        StackView2.id: (context) => StackView2(),
        Queue.id: (context) => Queue(),
        Tree.id: (context) => Tree(),
        HashTable.id: (context) => HashTable(),
        BidirectionalList.id: (context) => BidirectionalList(),
        BinarySearchTree.id: (context) => BinarySearchTree(),

      },
    );
  }
}
