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

class LinkedList extends StatefulWidget {
  static String id = 'linkedlist';

  @override
  _LinkedListState createState() => _LinkedListState();
}

class _LinkedListState extends State<LinkedList> {
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
            kHeaderGap,
            ImageViewData(imageLink: 'Images/linkedlist/linkedlist1.png',),
            kTitleGap,
            Description(description: '"A linked list is a linear collection of data elements, called nodes, each pointing to the next node by means of a pointer. It is a data structure consisting of a group of nodes which together represent a sequence." অর্থাৎ লিংকড লিস্ট হচ্ছে কিছু নােডের লিনিয়ার কালেকশন, যেই নোডগুলো একেকটা তার পরেরটাকে পয়েন্টারের মাধ্যমে পয়েন্ট করে। এটা একটা ডেটা স্ট্রাকচার, যেখানে নোডগুলাো একত্রে একটা সিকোয়েন্স তৈরি করে থাকে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist/linkedlist2.png',),
            kTitleGap,
            Description(description: 'মাথার উপর দিয়ে গেল তাই না? গেলে যাক! মূল ব্যাপারটা যেহেতু বুঝেই গেল এত গুরুগম্ভীর আলােচনাকে পাত্তা না দিলেও চলবে।',),
            kDescriptionGap,
            Description(description: 'কোডিং পার্টে ঢুকার আগে তােমার কিছু বিষয়ে নলেজ থাকতে হবে। যেমনঃ অ্যারে, স্ট্রাকচার, পয়েন্টার ও হালকা পাতলা রিকার্সন। অ্যারের উপর বিস্তারিত লেখাগুলো পাওয়া যাবে এখানে। রিকার্সনের প্রাথমিক ধারণা পেতে পারাে আমার ব্লগের রিকার্সন সিরিজ থেকে। বাকি টপিকগুলো ব্লগে এখনো লিখি নাই। গুগল করে শিখে ফেলতে পারোে।',),
            kDescriptionGap,
            Description(description: 'খুব সহজেই একটা স্ট্রাকচার বানিয়ে ফেলতে পারাে এভাবেঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 120,
              child: DartCodeViewer(r'''
struct blog_post
{
    int number;
    string address;
};
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'তাহলে blog_post হচ্ছে একটা স্ট্রাকচার। এটাতে রয়েছে ব্লগের মূল ডেটা (number) এবং পরের পােস্টের অ্যাড্রেস (address). এবার এই blog_post টাইপের ডেটার কয়েকটা ভেরিয়েবল বানিয়ে ফেলি।',),
            kDescriptionGap,
            Description(description: 'blog_post blog_post1, blog_post2, blog_post3;',),
            kDescriptionGap,
            Description(description: 'তিনটা ব্লগ পােস্ট তৈরি করা হয়েছে। আমরা যদি প্রথমটার address ভেরিয়েবলে দ্বিতীয় পােস্টের লিংকটা রাখতে পারি, দ্বিতীয় পােস্টের address ভেরিয়েবলে তৃতীয় পােস্টের লিংক রাখতে পারি তাহলে কিন্তু প্রথমটার অ্যাড্রেসে ক্লিক করলে দ্বিতীয় পোেস্ট, দ্বিতীয় পােস্টের নিচে থাকা অ্যাড্রেসে ক্লিক করলে তৃতীয় পােস্টটি পড়তে পারব। যেহেতু ৩ টাই মাত্র পোেস্ট। তাই তৃতীয় পোস্টের অ্যাড্রেসে আপাতত NULL রেখে দিতে পারি। কারণ পরে আর কোন পােস্ট নাই। নতুন কোনা পােস্ট যোগ হলে তার লিংকটা রেখে দিব blog_post3 এর address এ। আর নতুনটার address এ রেখে দিব NULL. এই আইডিয়াটাই লিংকড লিস্ট। এই আইডিয়া কাজে লাগিয়ে আমরা সত্যিকারের লিংকড লিস্ট ইমপ্লিমেন্ট করবাে।',),
            kDescriptionGap,
            Description(description: 'এক কথায় লিংকড লিস্টের সংজ্ঞা বলতে চাইলে বলা যায় লিংকড লিস্ট হচ্ছে কতগুলো স্ট্রাকচারের একটা লিস্ট। যেই স্ট্রাকচারগুলোর মধ্যেয এক বা একাধিক ডেটা থাকতে পারে। এবং পরবর্তী স্ট্রাকচারের মেমরি অ্যাড্রেস থাকে। অন্যান্য ডেটা স্ট্রাকচারের মত লিংকড লিস্ট ডেটা স্ট্রাকচারেরও কিছু কমন অপারেশন রয়েছে। সেগুলো আমরা আস্তে আস্তে কভার করবাে।',),
            kTitleGap,
            DataTitle(title: 'Operations of Linked List',),
            kDescriptionGap,
            Description(description: '• Create linked list',),
            Description(description: '• Traverse',),
            Description(description: '• Counting the list item',),
            Description(description: '• Print the full list',),
            Description(description: '• Search an item on list',),
            Description(description: '• Insert a new item on list',),
            Description(description: '• Delete an item from list',),
            Description(description: '• Concatenate two linked list',),
            kTitleGap,
            DataTitle(title: 'Types of Linked List:',),
            kDescriptionGap,
            Description(description: '1. Linear Singly Linked List',),
            Description(description: '2. Circular Linked List',),
            Description(description: '3. Doubly Linked List',),
            Description(description: '4. Circular Doubly Linked List',),
            kDescriptionGap,
            Description(description: 'এই পােস্টে প্রথম টাইপের লিঙ্কড লিস্ট নিয়েই আলােচনা করা হবে। পরবর্তী পোস্টে বাকিগুলাে নিয়ে আলােকপাত করার ইচ্ছা আছে।',),
            kTitleGap,
            DataTitle(title: 'Problem Definition',),
            kDescriptionGap,
            Description(description: 'তােমাকে একটা প্রােগ্রাম লিখতে হবে যেটা ডায়নামিক্যাল্যি একটা int টাইপের লিস্ট তৈরি করতে পারে। অর্থাৎ ইউজার আগে থেকে ইনপুট দিবে না যে সে কয়টা এলিমেন্টের লিস্ট তৈরি করতে চায়। ইউজার হয়ত কখনাে ৫ টা সংখ্যার লিস্ট তৈরি করবে, আবার কখনাে ৫০০০ সংখ্যার লিস্ট তৈরি করবে। শর্ত হচ্ছে সে যতটা সংখ্যার লিস্ট তৈরি করবে ঠিক ততটুকু মেমরিই দখল করা যাবে। শুরুতেই তুমি অনেক বড় একটা অ্যারে ডিক্লেয়ার করে রাখলে হবে না। এক্ষেত্রে মেমরি খুব সীমিত। তাই প্রয়ােজনের অতিরিক্ত ১ বাইটও খরচ করা যাবে না। Problem টি সলভ করতে হবে Linked List এর মাধ্যমে।',),
            kTitleGap,
            DataTitle(title: 'Solution',),
            kDescriptionGap,
            Description(description: 'লিংকড লিস্ট যেহেতু একটা স্ট্রাকচারের লিস্ট। তাই শুরুতেই একটা স্ট্রাকচার বানিয়ে ফেলিঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 120,
              child: DartCodeViewer(r'''
struct linked_list
{
    int number;
    struct linked_list *next;
};
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'ডেটা হিসেবে এখানে আছে number. তােমাদের প্রয়ােজন অনুসারে এখানে যতগুলো দরকার ডেটা নিতে পারাে। next হচ্ছে এই linked_list টাইপের স্ট্রাকচারের একটা পয়েন্টার ভেরিয়েবল। যে কিনা এই টাইপের একটা স্ট্রাকচারের মেমরি অ্যাড্রেস সংরক্ষণ করতে পারে।',),
            kDescriptionGap,
            Description(description: 'main function এর উপরে, এই linked_list স্ট্রাকচারের একটা global variable declare করি node নাম দিয়ে এভাবেঃ',),
            kDescriptionGap,
            Description(description: 'typedef struct linked_list node;',),
            kTitleGap,
            DataTitle(title: 'typedef কী?',),
            kDescriptionGap,
            Description(description: 'typedef এমন একটা keyword যার মাধ্যমে তুমি যে কোন টাইপের নতুন নামকরণ করতে পারবে। উদাহরণ দিলে ব্যাপারটা পরিষ্কার হবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
{
.
    typedef char Book[100];
    Book book1;
    scanf("%s", book1);
    printf("%s",book1);
.
}

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'char টাইপের একটা অ্যারে ডিক্লেয়ার করা হয়েছে Book[100] লিখে। এর শুরুতে typedef কীওয়ার্ডটা বসানাে হয়েছে। এর পরের লাইনে দেখাে, Book টাইপের একটা ভেরিয়েবল ডিক্লেয়ার করা হয়েছে। অর্থাৎ নতুন কোন ডেটাটাইপ না, কিন্তু আমাদের বুঝার সুবিধার্তে কোন একটা ভেরিয়েবলকেই আমরা ডেটাটাইপের মত করে ব্যবহার করতে পারি। বা Type define করে দিতে পারি।',),
            kDescriptionGap,
            Description(description: 'ফিরে আসি লিংকড লিস্টে। প্রবলেমটা সলভ করার জন্য আমাদের procedure হচ্ছে, main function এ node এর একটা পয়েন্টার ভেরিয়েবল (head) তৈরি করা। যে কিনা লিস্টের প্রথম আইটেমের মেমরি অ্যাড্রেস সংরক্ষণ করবে। এরপর main function থেকে create ফাংশন কল করা হবে। প্যারামিটার হিসাবে পাঠানাে হবে head-কে। এই head এর সাথে লিস্টের পরের আইটেমগুলো একটার পর একটা যুক্ত হতে থাকবে। head তৈরির কাজটা করা যায় এভাবেঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 100,
              child: DartCodeViewer(r'''
.
node *head; //node  head
head = (node *) malloc(sizeof(node)); //node  assign 
.

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            DataTitle(title: 'malloc কী?',),
            kDescriptionGap,
            Description(description: 'Dynamic memory allocation এর জন্য এই ফাংশনটি ব্যবহৃত হয়। আমরা একটা int type এর ভেরিয়েবল ডিক্লেয়ার করতে পারি int a; লিখে। এতে মেমরির যে কোন একটা অ্যাড্রেসে a এর জন্য মেমরি অ্যালােকেট করা হয়। কিন্তু কখনাে যদি সরাসরি ভেরিয়েবল ডিক্লেয়ার না করে ভেরিয়েবলের মেমরি ডিক্লেয়ার করার দরকার হয় তখন আমরা malloc ব্যবহার করতে পারি।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
{
    int *a;
    a = (int *) malloc (sizeof(int));
    printf("Memory address is %d\n",a);

    scanf("%d", a); //input to address "a". "a" is the memory address. So no need to use & sign
    printf("%d", *a); //"a" is memory address. but "*a" is the value of address "a"
}

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'আমাদের লিংকড লিস্টের ক্ষেত্রে প্রতিটা নতুন নতুন node লিস্টের সাথে জুড়ে দেয়ার সময় malloc ব্যবহার করে নতুন নােডের জন্য memory allocate করে হবে। আর মেমরি অ্যাড্রেসটা আগের নােডের next (মেমরি অ্যাড্রেস) variable এ অ্যাসাইন করে দিলেই তৈরি হয়ে যাবে লিংকড লিস্ট। ',),
            kDescriptionGap,
            Description(description: 'আগে বলে দেয়া procedure অনুযায়ী আমাদের head নাড তৈরি করা হয়ে গেছে। এখন create(head) ফাংশন কল করে এই head এর সাথে লেজ জুড়ে দেয়ার কাজ করতে হবে।',),
            kTitleGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'Create & Print Linked List', ID: 'createlinkedlist',),
            kDescriptionGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'Insert, Delete & Search Operation', ID: 'singlylinkedlist',),
            kDescriptionGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'Doubly Linked List', ID: 'doublylinkedlist',),
            kHeaderGap,
          ],
        ),
      ),
    );
  }
}
