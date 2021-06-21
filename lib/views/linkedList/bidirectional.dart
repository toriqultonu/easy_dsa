import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:demo_doc_vewer/model/constant.dart';
import 'package:demo_doc_vewer/widgets/appBar.dart';
import 'package:demo_doc_vewer/widgets/description.dart';
import 'package:demo_doc_vewer/widgets/image_data.dart';
import 'package:demo_doc_vewer/widgets/title.dart';
import 'package:flutter/material.dart';

class BidirectionalList extends StatelessWidget {

  static String id = 'bidirectional';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'বাইডিরেকশনাল লিংকড লিস্ট',
        ),
        centerTitle: true,
        elevation: 0.0,
        // actions: [
        //   Opacity(
        //     opacity: 0.0,
        //     child: Container(
        //       padding: EdgeInsets.symmetric(horizontal: 16),
        //       child: Icon(Icons.add),
        //     ),
        //   )
        // ],
      ),
      body: Container(
        color: kSecondaryThemeColor,
        child: ListView(
          children: [
            kTitleGap,
            DataTitle(title: 'বাইডিরেকশনাল লিংকড লিস্ট',),
            kTitleGap,
            Description(description: 'আমাদের আগের কোড এ অ্যাপেন্ড অপারেশন ছিলো O(n), লুপ চালিয়ে বারবার শেষ পর্যন্ত যেতে হচ্ছিলো। এছাড়া লিংকড লিস্টটা উল্টো দিক থেকে ট্রাভার্স করা সম্ভব হচ্ছিলো না।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist7.png',),
            kTitleGap,
            Description(description: 'উপরের ছবির লিংক লিস্টে প্রতি নোডে দুইটা পয়েন্টার ব্যবহার করা হয়েছে।  prev পয়েন্টারটা প্রতিটা নোডের আগের নোডের অ্যাড্রেসকে পয়েন্ট করে আছে। এছাড়াও এআমরা কটা tail পয়েন্টার এর সাহায্যে শেষ নোডটার অ্যাড্রেস মনে রাখছি।',),
            kDescriptionGap,
            Description(description: 'এখন লিংকড লিস্টের শেষে নতুন নোড যোগ করা সম্ভব O(1) কমপ্লেক্সিটিতে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 300,
              child: DartCodeViewer(
                r'''
struct node
{
  int roll;
  node *next, *prev;
};
node *root, *tail;
void append(int roll)
{
  if(root==NULL) //If the list is empty
  {
    root=new node();
    root->roll=roll;
    root->next=NULL;
    tail=root;
  }
  else
  {
    node *newnode=new node();
    newnode->roll=roll;
    newnode->next=NULL;
    tail->next=newnode; //add the new node after tail node
    tail=tail->next; //move tail pointer forward
  }
}
                ''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'এবার append ফাংশন খুব সহজ হয়ে গিয়েছে। নতুন নোডটা tail এর সাথে যোগ করে টেইল এক ঘর এগিয়ে নেয়া হচ্ছে। নোড ডিলিট করার সময়েও এখন আর previous_node ভ্যারিয়েবলটা রাখা দরকার নেই।',),
            kHeaderGap,

          ],
        ),
      ),
    );
  }
}
