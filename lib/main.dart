import 'package:easy_dsa/views/array/arrayTraversing.dart';
import 'package:easy_dsa/views/array/arrayView.dart';
import 'package:easy_dsa/views/array/update_array.dart';
import 'package:easy_dsa/views/compexity/complexityView.dart';
import 'package:easy_dsa/views/hashTable/hashTableView.dart';
import 'package:easy_dsa/views/home.dart';
import 'package:easy_dsa/views/linkedList/bidirectional.dart';
import 'package:easy_dsa/views/linkedList/binarySearchTree.dart';
import 'package:easy_dsa/views/linkedList/linkedListView.dart';
import 'package:easy_dsa/views/queue/queueView.dart';
import 'package:easy_dsa/views/stack/stackView.dart';
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

        ///Array
        Array.id: (context) => Array(),
        ArrayTraversing.id: (context) => ArrayTraversing(),
        UpdateArray.id: (context) => UpdateArray(),

        ///LinkedList
        LinkedList.id: (context) => LinkedList(),

        ///Stack
        StackView.id: (context) => StackView(),

        ///Queue
        Queue.id: (context) => Queue(),

        ///Tree
        Tree.id: (context) => Tree(),

        ///HashTable
        HashTable.id: (context) => HashTable(),

        ///Complexity
        Complxity.id: (context) => Complxity(),

        ///Other
        BidirectionalList.id: (context) => BidirectionalList(),
        BinarySearchTree.id: (context) => BinarySearchTree(),

      },
    );
  }
}
