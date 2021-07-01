import 'package:easy_dsa/views/array/arrayTraversing.dart';
import 'package:easy_dsa/views/array/arrayView.dart';
import 'package:easy_dsa/views/array/update_array.dart';
import 'package:easy_dsa/views/compexity/complexityView.dart';
import 'package:easy_dsa/views/hashTable/hashTableView.dart';
import 'package:easy_dsa/views/home.dart';
import 'package:easy_dsa/views/linkedList/circularLinkedList.dart';
import 'package:easy_dsa/views/linkedList/circularLinkedListPart2.dart';
import 'package:easy_dsa/views/linkedList/createLinkedList.dart';
import 'package:easy_dsa/views/linkedList/doublyDeletion.dart';
import 'package:easy_dsa/views/linkedList/doublyInsertion.dart';
import 'package:easy_dsa/views/linkedList/doublyLinkedList.dart';
import 'package:easy_dsa/views/linkedList/linkedListView.dart';
import 'package:easy_dsa/views/linkedList/singlyLinkedList.dart';
import 'package:easy_dsa/views/queue/dqueue.dart';
import 'package:easy_dsa/views/queue/queueView.dart';
import 'package:easy_dsa/views/stack/bracket.dart';
import 'package:easy_dsa/views/stack/stackView.dart';
import 'package:easy_dsa/views/tree/application_of_trees.dart';
import 'package:easy_dsa/views/tree/binary_search_tree.dart';
import 'package:easy_dsa/views/tree/delete_node.dart';
import 'package:easy_dsa/views/tree/maximum_minimum.dart';
import 'package:easy_dsa/views/tree/treeView.dart';
import 'package:easy_dsa/views/tree/tree_traversal.dart';

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
        CreateLinkedList.id: (context) => CreateLinkedList(),
        SinglyLinkedList.id: (context) => SinglyLinkedList(),
        DoublyLinkedList.id: (context) => DoublyLinkedList(),
        DoublyInsertion.id: (context) => DoublyInsertion(),
        DoublyDeletion.id: (context) => DoublyDeletion(),
        CircularLinkedList.id: (context) => CircularLinkedList(),
        CircularLinkedList2.id: (context) => CircularLinkedList2(),

        ///Stack
        StackView.id: (context) => StackView(),
        Bracket.id: (context) => Bracket(),

        ///Queue
        Queue.id: (context) => Queue(),
        DeQueue.id: (context) => DeQueue(),

        ///Tree
        Tree.id: (context) => Tree(),
        ApplicationOfTree.id: (context) => ApplicationOfTree(),
        BinarySearchTRee.id: (context) => BinarySearchTRee(),
        TreeTraversal.id: (context) => TreeTraversal(),
        MaximumMinimum.id: (context) => MaximumMinimum(),
        DeleteNode.id: (context) => DeleteNode(),


        ///HashTable
        HashTable.id: (context) => HashTable(),

        ///Complexity
        Complexity.id: (context) => Complexity(),


      },
    );
  }
}
