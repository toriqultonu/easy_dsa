import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:demo_doc_vewer/model/constant.dart';
import 'package:demo_doc_vewer/widgets/appBar.dart';
import 'package:demo_doc_vewer/widgets/description.dart';
import 'package:demo_doc_vewer/widgets/image_data.dart';
import 'package:demo_doc_vewer/widgets/title.dart';
import 'package:flutter/material.dart';

class BinarySearchTree extends StatelessWidget {
  static String id = 'binarysearchtree';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'বাইনারি সার্চ ট্রি',
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Container(
        color: kSecondaryThemeColor,
        child: ListView(
          children: [
            kTitleGap,
            DataTitle(title: 'বাইনারি সার্চ ট্রি',),
            kTitleGap,
            Description(description: 'লিংকড লিস্টের আরেকটা ব্যবহার হলো বিভিন্ন ধরণের ট্রি তৈরি করা। যেমন নিচে একটা বাইনারি সার্চ ট্রি তৈরি করা হয়েছে:',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist9.png',),
            kTitleGap,
            Description(description: 'বাইনারি সার্চ ট্রি তে বাম পাশের নোডে সবসময় ছোটো মান, ডানের নোডে সমান বা বড় মান থাকে। আমাদের left এবং right নামের দুইটা পয়েন্টার লাগবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(
r'''
struct node
{
  int roll;
  node *left, *right;
  node() //initialize the node using null
  {
    left=NULL;
    right=NULL;
  }
};
node *root;
''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'নতুন নোড ইনসার্ট করার সময় আগের মতই লুপ চালিয়ে শেষ নোডে আসতে হবে। লুপ চালানোর সময় বামে নাকি ডানে যাবে সেটা নোডের মান এবং নতুন মান তুলনা করে বের করতে হবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 400,
              child: DartCodeViewer(
r'''
  void insert(int roll)
{
  if(root==NULL) //first node in tree
  {
    root=new node();
    root->roll=roll;
  }
  else
  {
    node *current=root,*parent;
    while(current!=NULL)
    {
      if(roll<current->roll)
        {
            parent=current; //keep track of parent node
                  current=current->left;
              }
              else
              {
                parent=current;
                current=current->right;
              }
          }
      node *newnode=new node();
      newnode->roll=roll;
      if(newnode->roll<parent->roll) parent->left=newnode;
      else parent->right=newnode;
    }
  }
''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'কোড ঠিক আছে নাকি বোঝার জন্য একটা প্রিন্ট ফাংশন লিখি:',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(
r'''
  void print_preorder(node *current)
  {
    if(current==NULL) return;
    cout<<current->roll<<endl;
    print_preorder(current->left);
    print_preorder(current->right);
    
  }
''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'এই ফাংশনটা রিকার্সিভলি নোডগুলার মান প্রিন্ট করবে।',),
            kDescriptionGap,
            Description(description: 'কোডটা যদি বুঝে থাকো তাহলে বাইনারি সার্চ ট্রি থেকে নোড মুছে ফেলার ফাংশনটা লিখে ফেলো।  নোড মোছার সময় বেশ কয়েকটা কেস চিন্তা করতে হয়, সেটা নিয়ে এখানে আলোচনা করবো না। তুমি কোরম্যানের অ্যালগোরিদম বই থেকে বা গুগলে একটু সার্চ করে শিখে নিতে পারো।',),
            kHeaderGap,
          ],
        ),
      ),
    );
  }
}
