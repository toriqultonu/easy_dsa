import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class DoublyInsertion extends StatelessWidget {
  static String id = 'doublyinsertion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Doubly List ',
          str2: 'Insertion',
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
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  kHeaderGap,
                  DataTitle(title: 'Insert node at tail of a Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: 'একটা ফাংশন লিখবাে যার কাজ হবে লিস্টের tail নোডের পরে একটা নোড যুক্ত করা। head ও tail নামের দুইটা পয়েন্টার রাখা হয়েছে। লিস্টের প্রথম নোডের মেমরি লােকেশনটা রাখা থাকবে head এ, আর শেষ নােডের লােকেশনটা রাখা থাকবে tail এ। তাই এই head ও tail এর মাধ্যমে লিস্টের প্রথম ও শেষ নােডে access করা যাবে। যেহেতু পয়েন্টারের মাধ্যমে কাজ হচ্ছে তাই head ->number = 10; লিখলে লিস্টের শুরুর নােডের number এর মান assign হবে 10. আরাে ক্লিয়ার হবার জন্য বলি, তুমি যদি লিস্টে ১০ টা নােড যাগ করাে তাহলে মেমরিতে এই ১০ টা নোডের লিস্টের পাশাপাশি আরো ২ টা নােড স্টোর থাকবে। বাকি ২ টা নােড হচ্ছে head ও tail.',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/linkedlist/linkedlist7.png',),
                  kTitleGap,
                  Description(description: 'নতুন একটা নােড লিস্টে যােগ করার আগ মুহূর্ত পর্যন্ত tail node এর next পয়েন্টার ভেরিয়েবলটি পয়েন্ট করে ছিল NULL-কে। আমরা যদি নতুন নােডটি (নাম দিলাম newNode) লিস্টের শেষে যোগ করতে চাই তাহলে tail- &gt; next এর মধ্যে assign করতে হবে newNode এর মেমরি অ্যাড্রেস। অর্থাৎ tail -> next = newNode; ফলে সর্বশেষ নোডটি আমাদের newNode কে next node %3D হিসাবে পয়েন্ট করলাে। newNode বানানার সময়ই এর next ও previous পয়েন্টারে NULL বসিয়ে দেয়া হয়েছে। newNode যেহেতু সর্বশেষ নােড তাই এর next এ থাকবে NULL (অন্য কোনাে নােডকে পয়েন্ট করবে না, কারণ এটাই শেষ নোড)। কিন্তু newNode এর previous হিসাবে কোন নােডটা থাকবে? এর previous node হবে tail node. তাই newNode->previous=tail;',),
                  kDescriptionGap,
                  Description(description: 'আচ্ছা! tail node টা এখন লিস্টের যেই নােডকে পয়েন্ট করে আছে (newNode এর আগের নোড) সেটা কি আদৌ সর্বশেষ নােড? সেটা কিন্তু আর শেষ নোড হিসাবে মেমরিতে নাই (সেটা এখন শেষের আগের নােড)। তাই tail নামের যেই এক্সট্রা একটা নোড নিয়ে আমরা কাজ করছি এর মেমরি অ্যাড্রেসটা newNode এর অ্যাড্রেস দিয়ে আপডেট করে দিব। tail = newNode; এই লাইন execute করার পরপরই চেক করলে দেখা যাবে tail নোডটি পয়েন্ট করে আছে এই মাত্র যুক্ত করা newNode-কে। এভাবেই ইচ্ছা মত নােডকে লিস্টের শেষে যুক্ত করতে পারি। বুঝতে হয়ত কিছু সমস্যা হতে পারে, ব্যাপারটা মাথায় নিয়ে একটু মনে মনে ভিজুয়ালাইজ করার চেষ্টা করাে। সাথে কোডটা দেখাে। কোডে যা করা হয়েছে সেটাই উপরে বলা হয়েছে। কোনাে সমস্যা থাকলে কমেন্ট বক্স তাে আছেই!',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 300,
                    child: DartCodeViewer(r'''
void insert_at_tail(int value)
{
    node *newNode = getNewNode(value);

    if(head==NULL) //For the 1st element
    {
              head=newNode;
              tail=newNode;
              return;
    }

    //'tail' is a global node. 'newNode' will be the next node of tail.
    //finally newNode will be the 'tail' node of the list
    tail->next = newNode;
    newNode->previous = tail; //'newNode' point 'tail' node as previous node

    tail = newNode; // update the global node 'tail' by newNode.
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Insert a node at front',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/linkedlist/linkedlist8.png',),
                  kTitleGap,
                  Description(description: 'আগের ফাংশনটা বুঝে থাকলে এটা বুঝতে সমস্যা হবে না। আগেরটা যেহেতু tail এ নতুন নােড যুক্ত করেছিলাম তাই tail node এর next pointer আপডেট করে এরপর tail কে আপডেট করেছিলাম। এখানে front এ নতুন একটা নােড যােগ করছি, তাই head এর previous পয়েন্টার আপডেট করে এরপর head কে আপডেট করব।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 300,
                    child: DartCodeViewer(r'''
void insert_at_first(int value)
{
    node *newNode = getNewNode(value);

    if(head==NULL) //For the 1st element
    {
              //For now, newNode is the only one node of list
              //So it it is head and also tail
              head=newNode;
              tail=newNode;
              return;
    }

    //newNode will be the NEW HEAD of list.
    //So it'll point to head as 'next node'
    newNode->next = head;
    head->previous = newNode; //before, the previous node of head was NULL. but now newNode

    head = newNode; //update the global node 'head' by newNode
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Insert a node at middle position',),
                  kDescriptionGap,
                  Description(description: 'লিস্টের মাঝের যে কোনাে পজিশনে চাইলে আমরা নোড এড করতে পারি। এজন্য লুপ চালিয়ে আমাদের desired পজিশনের আগের পজিশনে এখন কোন নােডটা আছে সেটা বের করতে হবে (ধরি এই নােডর নাম temp)। এরপর নতুন একটা নােড create করে (ধরি এই নোডের নাম newNode) MDa data assign 160 R69 (newNode->number = data). newNode 43 previous link হবে temp. কারণ temp নোডের পরের পজিশনেই আমাদের নতুন নােডটা বসবে।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/linkedlist/linkedlist9.png',),
                  kTitleGap,
                  Description(description: 'তাহলে newNode এর পরের নােডটা কী হবে? ঠিক ধরেছ! newNode->next = temp->next. %3D অর্থাৎ নতুন নােড যােগ করার আগে temp node এর পরের নোডটাই হবে নতুন নাডের next link.',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 250,
                    child: DartCodeViewer(r'''
void insert_at_middle(int value, int position)
{
    node *newNode = getNewNode(value);

    if(head==NULL) //For the 1st element
    {
              //For now, newNode is the only one node of list
              //So it it is head and also tail
              head=newNode;
              tail=newNode;
              return;
    }

    node *temp = (node *) malloc(sizeof(node));
    temp = head;
    int i = 1;

    //find the position where our newNode will put
    while((i < position-1) && temp->next!=NULL){
              temp = temp->next;
              i++;
    }

    newNode->next = temp->next; //newNode's next node will be the next node of temp
    newNode->previous = temp; //newNode's previous node will be the temp node

    if(temp->next)
              temp->next->previous = newNode; //newNode will be the previous node of temp->next node

    temp->next = newNode; //update the next node of temp
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  kHeaderGap,
                  kHeaderGap,
                ],
              ),
            ),
            BannerADS(),

          ],
        ),
      ),
    );
  }
}
