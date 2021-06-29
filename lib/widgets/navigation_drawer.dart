import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/model/data_structure_icons.dart';
import 'package:easy_dsa/views/array/arrayView.dart';
import 'package:easy_dsa/views/linkedList/linkedListView2.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {


  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
        child: Material(
        color: kPrimaryThemeColor3,
          child: ListView(
            children: [
              SizedBox(height: 50,),
              appHeader(),
              SizedBox(height: 25,),
              buildMenuItem(text: "অ্যাারে (Array)", icon: DataStructure.array, context: context, ID: 'array'),
              buildMenuItem(text: "লিংকড লিস্ট (Linked List)", icon: DataStructure.linkedlist, context: context, ID: 'linkedlist'),
              buildMenuItem(text: "স্ট্যাক (Stack)", icon: DataStructure.stack, context: context, ID: 'stack'),
              buildMenuItem(text: "কিউ (Queue)", icon: DataStructure.queue, context: context, ID: 'queue'),
              buildMenuItem(text: "ট্রি (Tree)", icon: DataStructure.trees, context: context, ID: 'tree'),
              buildMenuItem(text: "হ্যাশটেবিল (HashTable)", icon: DataStructure.hashtable, context: context, ID: 'hashtable'),
              buildMenuItem(text: "কমপ্লেক্সিটি (Complexity)", icon: Icons.access_time, context: context, ID: 'complexity'),
            ]
          ),
        ),
        ),
    );
  }
}


Widget buildMenuItem({String text, IconData icon, context, String ID}){

  return ListTile(
    hoverColor: Colors.white,
    leading: Icon(icon, color: Colors.black87, size: 30,),
    title: Text(text,style: TextStyle(color: Colors.black54, fontSize: 16),),
    onTap: (){
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pushNamed(context, ID);
    },
  );
}

Widget appHeader(){
  return Row(
    children: [
      SizedBox(width: 24,),
      //FlutterLogo(size: 40,),
      //Image(image: AssetImage('Images/logo.png'),height: 45, width: 45,),
      //SizedBox(width: 10,),
      Text("ডাটা ",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black87)),
      Text("স্ট্রাকচার", style: TextStyle(fontSize: 30,color: Colors.blue, fontWeight: FontWeight.w500),)
    ],
  );
}