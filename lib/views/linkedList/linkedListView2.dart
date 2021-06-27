import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/navigation_drawer.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkedList2 extends StatefulWidget {
  static String id = 'linkedlist2';

  @override
  _LinkedList2State createState() => _LinkedList2State();
}

class _LinkedList2State extends State<LinkedList2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'লিংকড লিস্ট',
          str2: '',
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
            DataTitle(title: 'লিংকড লিস্ট',),
            kTitleGap,
            Description(description: 'লিংকড লিস্ট বেসিক একটা ডাটা স্ট্রাকচার। আমরা সাধারণত তথ্য রাখার জন্য অ্যারে ব্যবহার করি, তবে অ্যারের কিছু সীমাবদ্ধতা আছে যে কারণে অনেক সময় লিংকড লিস্ট ব্যবহারের দরকার হয়। লিংকড লিস্ট নিয়ে জানতে হলে অবশ্যই পয়েন্টার সম্পর্কে ধারণা থাকতে হবে।',),
            kDescriptionGap,
            Description(description: 'লিংক লিস্টের প্রতিটা এলিমেন্ট কে বলবো আমরা নোড। প্রতিটা নোডে সাধারণত দুইটা তথ্য থাকে: ১) যে তথ্যটা আমরা সংরক্ষণ করতে চাচ্ছি ২) পরবর্তি তথ্যটা কোথায় আছে তার ঠিকানা।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist3.png',),
            kTitleGap,
            Description(description: 'ছবিতে দেখা যাচ্ছে প্রথম নোড এ একজন ছাত্রের রোল নম্বর লেখা আছে, এবং পরবর্তি ছাত্রের তথ্য কোন নোড এ আছে সেটা দেখিয়ে দিচ্ছে next নামের একটা পয়েন্টার। দ্বিতীয় নোডটাই শেষ নোড, তাই এই নোডের নেক্সট পয়েন্টার একটা null নোডকে পয়েন্ট করছে। প্রথম নোডকে আমরা বলবো রুট নোড।',),
            kDescriptionGap,
            Description(description: 'অ্যারের সাথে লিংক লিস্টের একটা বড় পার্থক্য হলো অ্যারের তথ্যগুলো মেমরিতে পরপর সংরক্ষণ করা হয়। যদি অ্যারেটা একটা 4 বাইটের ইন্টিজার অ্যারে হয় এবং অ্যারের প্রথম এলিমেন্টটা যদি থাকে x তম মেমরি সেল এ, তাহলে পরের ৩টি এলিমেন্ট x+4, x+8, x+12 মেমরি সেল এ থাকবে। নিচের কোডটা রান করলেই প্রমাণ পাবে।',),
            kTitleGap,
            Container(
             margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(
                r'''
  int main(){
    int a[5];
    for(int i=0;i<5;i++)
    {
        printf("%u\n",&(a[i])); #print address of each element
    }
    return 0;
}
                ''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'সেজন্য অ্যারের প্রথম এলিমেন্টের অ্যাড্রেস জানলেই এরপর যেকোনো এলিমেন্টের অ্যাড্রেস সহজেই বের করে ফেলা যায়, ইন্টিজার অ্যারের p তম এলিমেন্ট থাকে x+p*4 অ্যাড্রেসে যেখানে x হলো শূন্যতম এলিমেন্টের অ্যাড্রেস।',),
            kDescriptionGap,
            Description(description: 'একটা সি তে লিংকড লিস্ট তৈরির জন্য শুরুতেই একটা স্ট্রাকচার ডিফাইন করতে হবে, যেখানে থাকবে যে তথ্য সংরক্ষণ করতে চাই সেটা এবং পরবর্তী নোডের অ্যাড্রেস।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(
                r'''
nstruct node
{
  int roll;
  node *next;
};
node *root=NULL;
int main(){
  
    return 0;
}
                ''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'node *next হলো একটা পয়েন্টার যেটা একটা node এর অ্যাড্রেস সংরক্ষণ করে।',),
            Description(description: 'node *root হলো একটা পয়েন্টার যেটা সবসময় প্রথম নোডের অ্যাড্রেস সংরক্ষণ করবে। শুরুতে লিস্ট এ কোনো নোড নেই, তাই রুট পয়েন্টারের মান নাল(Null)। প্রথম নোডের অ্যাড্রেস ব্যাবহার করে আমরা পরবর্তীতে অন্য নোডের তথ্য পড়তে পারবো।',),
            kDescriptionGap,
            Description(description: 'এখন আমাদের একটা ফাংশন দরকার যেটা ব্যবহার করে নতুন একটা নোড লিস্টে শেষে প্রবেশ করাতে পারবো। মনে করো ফাংশনটার নাম append। এই ফাংশনটা লেখার সময় ২টা কেস মাথায় রাখতে হবে। প্রথম কেস হলো যে নোডটা প্রবেশ করাচ্ছি সেটাই লিংক লিস্টের প্রথম নোড কি না। যদি তাই হয়, তাহলে রুট পয়েন্টার ব্যবহার করে প্রথম নোডটা তৈরি করতে হবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(
                r'''
void append(int roll)
{
  if(root==NULL) //If the list is empty
  {
    root=new node(); //create new node in root
    root->roll=roll;
       root->next=NULL;
  }
}
               ''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'যদি লিংকড লিস্টে আগেই কিছু নোড থাকে তাহলে আমাদেরকে শেষ নোডটা খুজে বের করতে হবে। তারপর শেষ নোডের নেক্সট পয়েন্টার ব্যবহার করে পরবর্তী নোডটা তৈরি করতে হবে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist4.png',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 300,
              child: DartCodeViewer(
                r'''
void append(int roll)
{
  if(root==NULL) //If the list is empty
  {
    root=new node();
    root->roll=roll;
    root->next=NULL;
  }
  else
  {
    node *current_node=root; //make a copy of root node
    while(current_node->next!=NULL) //Find the last node
    {
      current_node=current_node->next; //go to next address
    }
    node *newnode = new node(); //create a new node
    newnode->roll=roll;
    newnode->next=NULL;
    
    current_node->next=newnode; //link the last node with new node
  }
}
                ''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'আমরা প্রথমে লুপ চালিয়ে শেষ নোডটা বের করছি। শেষ নোড কোনটা বোঝা খুব সহজ, যেই নোডের নেক্সট পয়েন্টার নাল সেটাই শেষ নোড। এরপর নতুন একটা নোড তৈরি করে শেষ নোডের সাথে সেটা লিংক করে দিচ্ছি। আমাদের এই অ্যাপেন্ড ফাংশনের কমপ্লেক্সিটি O(n)',),
            kDescriptionGap,
            Description(description: 'লক্ষ্য করো, রুট পয়েন্টারকে আমরা সামনে নিচ্ছি না, সেটার একটা কপি তৈরি সেটাকে সামনে নিচ্ছি। কারণ রুট পয়েন্টারকে আমরা সামনে নিলে প্রথম নোডের অ্যাড্রেস হারিয়ে ফেলবো!',),
            kDescriptionGap,
            Description(description: 'সবগুলো ছাত্রের রোল নম্বর প্রিন্ট করতে চাইলেও একইভাবে করতে পারবো। আগের মতই লুপ চালিয়ে শেষ নোড পর্যন্ত যাবো এবং সবগুলো মান প্রিন্ট করবো।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(
                r'''
void print()
{
    node *current_node=root;
    while(current_node!=NULL) //loop until you reach null
    {
      printf("%d\n",current_node->roll);
      current_node=current_node->next;
    }
}
int main(){

  append(1);
  append(2);
  append(6);
  print();
    return 0;
}

                ''',
                stringStyle: kCodeTextStyle,

              ),
            ),
            kTitleGap,
            Description(description: 'এখন তুমি যদি চাও শুধুমাত্র ১০ তম ছাত্রের রোল প্রিন্ট করতে, তাহলে কি করবে? তোমাকে লুপ চালিয়ে ১০ নম্বর নোড খুজে বের করে প্রিন্ট করতে হবে। কিন্তু অ্যারেতে আমরা roll[10] লিখেই ১০তম ছাত্রের রোল প্রিন্ট করে ফেলতে পারতাম। লিংকড লিস্টে তথ্যগুলো মেমরিতে পরপর সাজান্য নেই তাই রেন্ডম এক্সেস করা যায় না। লিংকড লিস্টে কোনো ইনডেক্স খুজে বের করার কমপ্লেক্সিটি তাই O(n) যেখানে অ্যারেতে O(1) [পুরানো আমলের গানশোনার ফিতার ক্যাসেটগুলোর কথা মনে আছে? সেখানেও কোনো গানে লাফ দিয়ে চলে যাওয়া যেত না, ফিতা ঘুরিয়ে খুজে বের করতে হতো। এখানেও একই ব্যাপার ঘটছে!]',),
            kDescriptionGap,
            Description(description: 'লিংক লিস্ট এর সুবিধা হলো চাইলেও কোনো তথ্য মাঝখান থেকে মুছে ফেলা যায়। অ্যারেতে তুমি চাইলেই মাঝখান থেকে একটা ইনডেক্স মুছে ফেলতে পারবে না, মুছতে হলে ডানের সব এলিমেন্টকে একঘর বামে টেনে এনে ফাকা জায়গা পূরণ করতে হবে, এবং সবার শেষের এলিমেন্টটাকে মুছে ফেলতে হবে। কিন্তু লিংকড লিস্টে তুমি সহজেই মাঝখান থেকে একটা নোড মুছে ফেলতে পারবে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist5.png',),
            kTitleGap,
            Description(description: 'ছবিতে রোল ২ কে কিভাবে মুছে ফেলা যায় দেখানো হয়েছে। রোল ২ এর আগের নোড রোল ১ এর পয়েন্টারকে দিয়ে রোল ২ এর পরের নোড এর অ্যাড্রেস কে পয়েন্ট করানো হয়েছে, এবং মাঝের নোডটা মেমরি থেকে মুছে ফেলা হয়েছে।',),
            kDescriptionGap,
            Description(description: 'লক্ষ্য করো, রুট নোডের আগে কোনো নোড নেই। তাই রুট নোড মুছে ফেলা আরো সহজ, শুধুমাত্র রুট পয়েন্টার এক ঘর এগিয়ে দিতে হবে এবং আগের নোডটা মুছে ফেলতে হবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 300,
              child: DartCodeViewer(
                r'''
void delete_node(int roll)
{
    node *current_node=root;
    node *previous_node=NULL;
    while(current_node->roll!=roll) //Searching node 
  {
previous_node=current_node; //Save the previous node
    current_node=current_node->next;
  }
  if(current_node==root) //Delete root
  {
    node *temp=root; //save root in temporary variable
    root=root->next; //move root forward
    delete(temp); //free memory
  }
  else //delete non-root node
  {
    previous_node->next=current_node->next; //previous node points the current node's next node 
    delete(current_node); //free current node
  }
	
}

                ''',
                stringStyle: kCodeTextStyle,
              ),
            ),
            kTitleGap,
            Description(description: 'উপরের কোডে প্রথমে আমরা খুজে বের করেছি যে রোল নম্বরটা মুছতে হবে সেই নোডটাকে। যদি সেটাই রুট নোড হয় তাহলে রুটকে একঘর এগিয়ে দিয়েছি, নাহলে উপরের ছবির মত করে মুছেছি।',),
            kDescriptionGap,
            Description(description: 'লক্ষ্য করো, আমি delete(node) নামের একটা লাইব্রেরি ফাংশন ব্যবহার করেছি। মোছার সময় পয়েন্টার ঠিকঠাক করার পর অবশ্যই delete ফাংশন ব্যবহার করে মেমরি ফ্রি করে দিতে হবে, নাহলে লিংকড লিস্ট থেকে নোড মুছে গেলেও নোডটা মেমরিতে থেকে যাবে, অন্য কোনো প্রোগ্রাম সেটাকে ব্যবহার করতে পারবে না। লিংকড লিস্টের কোড লেখার সময় delete() ফাংশন ব্যবহার করতে ভুলে যাওয়া খুবই কমন একটা ভুল।',),
            kDescriptionGap,
            Description(description: 'লিংকড লিস্ট এ তুমি চাইলে মাঝখানেও নোড যোগ করতে পারবে। এই পর্যন্ত বুঝে থাকলে তোমার কাজ হবে দুই নোড এর মাঝে নতুন নোড যোগ করার জন্য ফাংশন লেখা। এটা অনেকটা delete-node ফাংশনের মত করে লিখতে হবে। ফাংশনের প্যারামিটার হিসাবে নিবে roll1, roll2, তোমার ফাংশনের কাজ হবে roll1 যে নোডে আছে সেটা খুজে বের করে সেটার পরে roll2 নোডটা যোগ করা।',),
            kTitleGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'বাইডিরেকশনাল লিংকড লিস্ট', ID: 'bidirectional',),
            kDescriptionGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'বাইনারি সার্চ ট্রি', ID: 'binarysearchtree',),
            kTitleGap,
            Description(description: 'লিংকড লিস্টের কোড লেখার সময় কিছু কমন ভুল হয় শুরুর দিকে। যেমন পয়েন্টারের মান নাল হয়ে যাবার পরেও মান প্রিন্ট করার চেষ্টা করে বা আরো সামনে আগানোর চেষ্টা করা, সেক্ষেত্রে কোড রান টাইম ইরোর দিবে। এছাড়া মেমরি ফ্রি করতে ভুলে যাওয়াও খুব সাধারণ একটা ভুল। আরেকটা ভুল হলো রুট বা টেইল পয়েন্টারের মান বদলে ফেলা।',),
            kHeaderGap,
          ],
        ),
      ),
    );
  }
}
