import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class CircularLinkedList2 extends StatelessWidget {
  static String id = 'circularlinkedlist2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Doubly Circular ',
          str2: 'Linked List',
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
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  kHeaderGap,
                  ImageViewData(imageLink: 'Images/linkedlist/linkedlist12.png',),
                  kTitleGap,
                  Description(description: 'Circular Doubly Linked List এমন একটা লিংকড লিস্ট যাতে দুটি বৈশিষ্ট্য আছে। প্রথমত এটা একটা circular (singly) linked list এবং দ্বিতীয়ত এটা একটা doubly linked list. এই circular আর doubly দুইটা লিস্টের বৈশিষ্ট্যকে এক সাথে করে বানানা হয়েছে circular doubly linked list.',),
                  kDescriptionGap,
                  Description(description: 'Circular Linked List এর বৈশিষ্ট্য হচ্ছে এটা সার্কুলার। অর্থাৎ এর শেষ প্রান্ত বলে কিছু নাই। শেষ প্রান্তে গিয়ে পরের নােডে যেতে চাইলে সে তােমাকে head node এর কাছে পাঠিয়ে দিবে। তুমি চাইলে চড়কির মত এই লিস্টের মধ্যে ভনভন করে ঘুরতে পারাে (multiplayer লুডু খেলার মত। চারজনই একের পর এক ছক্কা দিয়ে চালতে থাকে)। আর doubly linked list হচ্ছে এমন একটা লিস্ট যার একটা শুরু ও শেষ আছে (সার্কুলার নয়। শেষ নোডটি next pointer হিসাবে NULL-কে পয়েন্ট করে থাকে)। এর বিশেষ বৈশিষ্ট্য হচ্ছে এর head থেকে tail এর দিকে যেমন traverse করা যায়, একই ভাবে tail থেকে head এর দিকেও traverse করা যায়। অর্থাৎ ছোট বেলার উভমুখী বিক্রিয়ার মত একটা বিষয়।',),
                  kTitleGap,
                  DataTitle(title: 'Applications of Circular Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: '* Repeated task নিয়ে কাজ করার ক্ষেত্রে যদি forward-backward দুই দিকেই traverse করার দরকার হয় একই সাথে যদি লিস্টটাকে সার্কুলারও করতে হয় সেক্ষেত্রে এই ডেটা স্ট্রাকচারটা দরকার হয়। যেমনঃ মিডিয়া প্লেয়ার অ্যাপ্লিকেশনে অডিও বা ভিডিওগুলো সামনে- পিছনে ইচ্ছা মত প্লে করা যায়। পুরাে লিস্ট প্লে হলে আবার শুরু থেকে প্লে হয়। তার মানে আমরা যদি ডেস্কটপ, মােবাইল বা ওয়েবে যদি media player App বানাতে চাই তাহলে সেখানে circular doubly linked list ডেটা স্ট্রাকচার নিয়ে কাজ করতে হবে।',),
                  kDescriptionGap,
                  Description(description: '* অনলাইন শপিংয়ের ক্ষেত্রে shopping cart ম্যানেজ করার জন্য এই ডেটা স্ট্রাকচার ব্যবহৃত হয়।',),
                  kTitleGap,
                  DataTitle(title: 'Advantages of Circular Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: '* লিস্টের যে কোনাে নােডকে শুরুর নোেড ধরে পুরাে লিস্টে traverse করা যায়। শুধু খেয়াল রাখতে হবে যেই নােড থেকে শুরু করা হয়েছিল সেটায় দ্বিতীয় বার ভিজিট করলে যেন traverse operation terminated হয়।',),
                  kDescriptionGap,
                  Description(description: '* লিস্টের শুরু থেকে শেষের দিকে ও শেষ থেকে শুরুর দিকে traverse করা যায়।',),
                  kDescriptionGap,
                  Description(description: '* Constant time এ [ O(1) ] head থেকে tail এবং tail থেকে head এর মধ্যে সুইচ করা যায়।',),
                  kDescriptionGap,
                  Description(description: '* Advanced কিছু Data Structures এর মাধ্যমে implement করা যায়। যেমনঃ Fibonacci Неар.',),
                  kTitleGap,
                  DataTitle(title: 'Disadvantages of Circular Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: '* প্রতিটা নােডের previous pointer স্টোর করার জন্য একটু বেশি খরচ হয়।',),
                  kDescriptionGap,
                  Description(description: '* বেশ কিছু পয়েন্টার হ্যান্ডেল করতে হয় যে কোনাে অপারেশনেই। লিস্টে একটা নোড ঢুকলে বা ডিলেট হলে তার আগের ও পরের উভয় নোডের সাথেই পয়েন্টার কেন্দ্রীক কাজ করতে হয়। তাই খুব সাবধানতা অবলম্বন করতে হয়। নইলে লিস্টের ভিতরের জিনিসপত্রে ভজঘট লেগে যেতে পারে।',),
                  kTitleGap,
                  DataTitle(title: 'Operations of Circular Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: 'অন্যান্য ডেটা স্ট্রাকচারের মতই সার্কুলার ডাবলি লিংকড লিস্টের কমন কিছু অপারেশন রয়েছে। এই লেখায় নিচের অপারেশনগুলাে নিয়ে আলোচনা করা হবে।',),
                  kDescriptionGap,
                  Description(description: '1. Insert node at list (Position: head, tail and middle)',),
                  Description(description: '2. Delete node from list (Position: head, tail and middle)',),
                  Description(description: '3. Traverse the list in Forward order (Print the full list)',),
                  Description(description: '4. Traverse the list in Backward/Reverse order (Print the full list)',),
                  kTitleGap,
                  DataTitle(title: 'Insert node at Circular Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: 'Insert node at head: নতুন একটা নােড লিস্টের front এ add করতে চাইলে নিচের কাজগুলাে করতে হবেঃ',),
                  kDescriptionGap,
                  Description(description: '1. নতুন একটা নােড বানিয়ে (newNode) এর next ও previous pointer এ তার নিজের মেমরি অ্যাড্রেসই অ্যাসাইন করে দেয়া',),
                  kDescriptionGap,
                  Description(description: '2. newNode এর next pointer-টি পয়েন্ট করবে head-কে।',),
                  kDescriptionGap,
                  Description(description: '3. newNode 43 previous pointer-টি পয়েন্ট করবে tail-কে',),
                  kDescriptionGap,
                  Description(description: '4. head এর previous pointer এখন পর্যন্ত tail-কে পয়েন্ট করে আছে। কিন্তু head এর আগে এখন newNode বসেছে। তাই head এর previous pointer পয়েন্ট করবে newNode-কে।',),
                  kDescriptionGap,
                  Description(description: '5. tail এর next pointer এখন পর্যন্ত head কে পয়েন্ট করে আছে। কিন্তু নতুন head হতে যাচ্ছে। newNode. তাই tail এর next pointer পয়েন্ট করবে newNode-কে',),
                  kDescriptionGap,
                  Description(description: '6. লিস্টের নতুন head এখন newNode. তাই head-কে আপডেট করতে হবে newNode দিয়ে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 250,
                    child: DartCodeViewer(r'''
void insert_at_head(int number){
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;
    newNode->previous = newNode;

    if(head==NULL){
              head = newNode;
              tail = newNode;
    } else{
              newNode->next = head;
              newNode->previous = tail;
              head->previous = newNode;
              tail->next = newNode;
              head = newNode;
    }
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'Insert node at tail: নতুন একটা নোড লিস্টের end এ add করতে চাইলে নিচের কাজগুলাে করতে হবেঃ',),
                  kDescriptionGap,
                  Description(description: '1. নতুন একটা নােড বানিয়ে (newNode) এর next ও previous pointer এ তার নিজের মেমরি অ্যাড্রেসই অ্যাসাইন করে দেয়া',),
                  kDescriptionGap,
                  Description(description: '2. এখন tail-&gt;next পয়েন্ট করে আছে head কে। যেহেতু tail এ নতুন একটা নাড newNode যােগ হবে তাই এটিই হবে নতুন tail. তাই বর্তমান tail এর next pointer পয়েন্ট করবে newNode কে।',),
                  kDescriptionGap,
                  Description(description: '3. newNode যেহেতু হতে যাচ্ছে নতুন tail, তাই এর next pointer পয়েন্ট করবে head কে।',),
                  kDescriptionGap,
                  Description(description: '4. newNode এর previous pointer পয়েন্ট করবে বর্তমান tail কে।',),
                  kDescriptionGap,
                  Description(description: '5. উপরের চারটি ধাপ অতিক্রম করলে newNode লিস্টের শেষে বসে যাবে। এখন এটা যেহেতু নতুন tail, তাই tail node কে আপডেট করে দিতে হবে newNode দিয়ে।',),
                  kDescriptionGap,
                  Description(description: '6. এখন পর্যন্ত head এর previous pointer পয়েন্ট করে আছে পুরাতন tail-কে। যেহেতু tail আপডেট হয়েছে সেহেতু head এর previous pointer-ও আপডেট করতে হবে updated tail দিয়ে। তুমি চাইলে head->previous = newNode; এভাবেও লিখতে পার।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 250,
                    child: DartCodeViewer(r'''
void insert_at_tail(int number){
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;
    newNode->previous = newNode;

    if(head==NULL){
              head = newNode;
              tail = newNode;
    } else{
              tail->next = newNode;
              newNode->next = head;
              newNode->previous = tail;
              tail = newNode;
              head->previous = tail; //can also write `head->previous = newNode`
    }
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'Insert node at middle: নতুন একটা নোড লিস্টের মাঝের যে কোনো পজিশনে add করতে চাইলে নিচের কাজগুলাে করতে হবেঃ',),
                  kDescriptionGap,
                  Description(description: '1. List এ নােডের order অনুযায়ী desired position এর নোড (current) ও তার আগের নোড (temp) বের করা। নতুন নােডটি (newNode) বসবে temp আর current এর মাঝে।',),
                  Description(description: '2. temp 43 next pointer পয়েন্ট করবে newNode-কে।',),
                  Description(description: '3. newNode 43 next pointer পয়েন্ট করবে current node-কে।',),
                  Description(description: '4. newNode 43 previous pointer পয়েন্ট করবে temp node-কে।',),
                  Description(description: '5. current node 43 previous pointer পয়েন্ট করবে newNode-কে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 300,
                    child: DartCodeViewer(r'''
void insert_at_middle(int number, int position){
    if(position==1){
              insert_at_head(number);
              return;
    } else if(position>1 && head!=NULL){
              node *current = head;
              node *temp = (node *) malloc(sizeof(node));
              int count = 0;

              do{
                  count++;
                  temp = current;
                  current = current->next;
              }   while(current->next != head && count<position-1);

              if(count==position-1){
                  if(temp==tail)
                      insert_at_tail(number);
                  else{
                      node *newNode = (node *) malloc(sizeof(node));
                      newNode->number = number;

                      temp->next = newNode;
                      newNode->next = current;
                      newNode->previous = temp;
                      current->previous = newNode;
                  }
                  return;
              }
    }

    printf("Position does not exist!\n");
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Delete node from Circular Doubly Linked List',),
                  kDescriptionGap,
                  Description(description: 'Delete head node: Circular doubly linked list 4a head node- anae a a a 7a15 নিচের স্টেপগুলাে ফলাে করতে হবেঃ',),
                  kDescriptionGap,
                  Description(description: '1. head যেই নােডকে পয়েন্ট করে আছে temp-ও সেটিকে পয়েন্ট করে আছে।',),
                  kDescriptionGap,
                  Description(description: '2. যেহেতু head-কে ডিলেট করতে চাই, সুতরাং head-&gt;next যেই নােডকে পয়েন্ট করে আছে। সেটিই হবে নতুন head।',),
                  kDescriptionGap,
                  Description(description: '3. নতুন যেই নােডটি head এ assign হল তার previous node কিন্তু পয়েন্ট করে আছে আগের head-কে। তাই নতুন head এর previous pointer কে আপডেট করতে হবে tail দিয়ে।',),
                  kDescriptionGap,
                  Description(description: '4. tail এর next pointer পয়েন্ট করে ছিল আগের head-কে। head যেহেতু আপডেট হয়েছে। তাই tail এর next pointer-ও নতুন head দিয়ে আপডেট করতে হবে',),
                  kDescriptionGap,
                  Description(description: '5. temp আগের head-কে পয়েন্ট করে ছিল। এটাকে যেহেতু ডিলেট করছি তাই মেমরি থেকে এটাকে মুছে ফেলতে হবে [free(temp)].',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void delete_head(){
    if(head==NULL)  return;

    node *temp = head;

    head = head->next;
    head->previous = tail;
    tail->next = head;

    free(temp);
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'Delete tail node: Circular doubly linked list 43 tail node- f aa a a aeA স্টেপগুলাে ফলাে করতে হবেঃ',),
                  kDescriptionGap,
                  Description(description: '1. temp পয়েন্ট করবে tail node-কে।',),
                  Description(description: '2. নতুন tail হবে tail->previous.',),
                  Description(description: '3. নতুন tail এর next pointer এখন পয়েন্ট করে আছে পুরাতন tail-কে। এটা আপডেট করতে হবে head দিয়ে।',),
                  Description(description: '4. head এর previous pointer পয়েন্ট করে আছে পুরাতন tail-কে। একে নতুন tail দিয়ে আপডেট করতে হবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void delete_tail(){
    if(head==NULL)  return;

    node *temp = tail;

    tail = tail->previous;
    tail->next = head;
    head->previous = tail;

    free(temp);
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'Delete any middle position node: Circular doubly linked list মাঝের পজিশনের node-কে ডিলেট করার জন্য নিচের স্টেপগুলো ফলো করতে হবেঃ',),
                  kDescriptionGap,
                  Description(description: '1. Desired position এর নোডটি খুঁজে বের করতে হবে (current node).',),
                  kDescriptionGap,
                  Description(description: '2. current নােডের আগের নােডটির next pointer পয়েন্ট করবে current এর next pointer- কে। ফলে current node কে কোনাে নােডই এখন আর next pointer হিসাবে পয়েন্ট করছে না।',),
                  kDescriptionGap,
                  Description(description: '3. current এর পরের নাডটি কিন্তু এখনো previous pointer হিসাবে current-কে পয়েন্ট করে আছে। কিন্তু একে পয়েন্ট করে রাখা যাবে না। পয়েন্ট করতে হবে current এর আগের নোডকে।',),
                  kDescriptionGap,
                  Description(description: '4. এখন কোনাে নােডই next বা previous পয়েন্টার হিসাবে current node-কে পয়েন্ট করছে। না। তার মানে এটা লিস্ট থেকে ছিটকে পড়েছে। কিন্তু এখনাে মেমরিতে স্পেস দখল করে আছে। তাই current node কে free করে দিতে হবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 300,
                    child: DartCodeViewer(r'''
void delete_middle(int position){
    if(head==NULL)  return;

    if(position==1){
              delete_head();
              return;
    }

    node *current = head;
    int count = 0;

    do{
              count++;
              current = current->next;
    }   while(current->next != head && count<position-1);

    if(count==position-1){
              if(current==tail){
                  delete_tail();
                  return;
              }

              current->previous->next = current->next;
              current->next->previous = current->previous;
              free(current);

              return;
    }

    printf("Position (%d) does not exist!\n", position);
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Print Circular Doubly Linked List in Forward order',),
                  kDescriptionGap,
                  Description(description: 'head node থেকে প্রিন্ট করা শুরু করতে হবে। যতক্ষণ না আবার head node পাওয়া যায় ততক্ষণ প্রিন্টের কাজ চলতে থাকবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void print_forward_order(){
    if(head==NULL)  return;

    node *current = head;
    do{
              printf("%d ", current->number);
              current = current->next;
    }   while(current != head);
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Print Circular Doubly Linked List in Reverse order',),
                  kDescriptionGap,
                  Description(description: 'tail node থেকে প্রিন্ট করা শুরু করতে হবে। যতক্ষণ না আবার tail node পাওয়া যায় ততক্ষণ প্রিন্টের কাজ চলতে থাকবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void print_reverse_order(){
    if(head==NULL)  return; // also can check `tail==NULL`

    node *current = tail;
    do{
              printf("%d ", current->number);
              current = current->previous;
    }   while(current != tail);
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>

struct linked_list{
    int number;
    struct linked_list *next;
    struct linked_list *previous;
};

typedef struct linked_list node;
node *head = NULL, *tail = NULL;

void insert_at_head(int number);
void insert_at_tail(int number);
void insert_at_middle(int number, int position);
void delete_head();
void delete_tail();
void delete_middle(int posision);
void print_forward_order();
void print_reverse_order();
void print_list();
int getListLength();

int main()
{
    int a = 5, b = 15, c = 43, d = 23, e = 12, f = 66, g = 99, h =65, i = 20, j = 8;
    int pos = 2, insertMidValue = 500, deletePos = 5;

    printf("Insert at head: %d\n", a);
    insert_at_head(a);
    print_list();

    printf("Insert at tail: %d, %d, %d\n", b, c, d);
    insert_at_tail(b);
    insert_at_tail(c);
    insert_at_tail(d);
    print_list();

    printf("Delete HEAD\n");
    delete_head();
    print_list();

    printf("Insert at head: %d\n", e);
    insert_at_head(e);
    print_list();

    printf("Insert at POSITION: %d, VALUE: %d\n", pos, insertMidValue);
    insert_at_middle(insertMidValue, pos);
    print_list();

    printf("Delete TAIL\n");
    delete_tail();
    print_list();

    printf("Insert at tail: %d, %d, %d\n", f, g, h);
    insert_at_tail(f);
    insert_at_tail(g);
    insert_at_tail(h);
    print_list();

    printf("Delete from POSITION: %d\n", deletePos);
    delete_middle(deletePos);
    print_list();

    return 0;
}

// Insert a node at front of a circular doubly linked list
void insert_at_head(int number)
{
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;
    newNode->previous = newNode;

    if(head==NULL)
    {
              head = newNode;
              tail = newNode;
    }
    else
    {
              newNode->next = head;
              newNode->previous = tail;
              head->previous = newNode;
              tail->next = newNode;
              head = newNode;
    }

}

// Insert a node at tail of a circular doubly linked list
void insert_at_tail(int number)
{
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;
    newNode->previous = newNode;

    if(head==NULL)
    {
              head = newNode;
              tail = newNode;
    }
    else
    {
              tail->next = newNode;
              newNode->next = head;
              newNode->previous = tail;
              tail = newNode;
              head->previous = tail;
    }
}

// Insert a node at middle of a circular doubly linked list
void insert_at_middle(int number, int position)
{
    if(position==1)
    {
              insert_at_head(number);
              return;
    }
    else if(position>1 && head!=NULL)
    {
              node *current = head;
              node *temp = (node *) malloc(sizeof(node));
              int count = 0;

              do
              {
                  count++;
                  temp = current;
                  current = current->next;
              }   while(current->next != head && count<position-1);

              if(count==position-1)
              {
                  if(temp==tail)
                      insert_at_tail(number);
                  else
                  {
                      node *newNode = (node *) malloc(sizeof(node));
                      newNode->number = number;

                      temp->next = newNode;
                      newNode->next = current;
                      newNode->previous = temp;
                      current->previous = newNode;

                  }
                  return;
              }

    }

    printf("Position does not exist!\n");
}

// Delete HEAD node of a circular doubly linked list
void delete_head()
{
    if(head==NULL)  return;

    node *temp = head;

    tail->next = head->next;
    head = head->next;
    head->previous = tail;

    free(temp);
}

// Delete TAIL node of a circular doubly linked list
void delete_tail()
{
    if(head==NULL)  return;

    node *temp = head;
    node *current = head;

    while(current->next != head)
    {
              temp = current;
              current = current->next;
    }
    // now, `current` node is the TAIL. `temp` is the previous node of TAIL.
    // `current->next` is HEAD

    temp->next = head; //also can write temp->next = current->next;
    tail = temp;
    head->previous = tail;
    free(current);
}

// Delete a node middle in the circular doubly linked list
void delete_middle(int position)
{
    if(head==NULL)  return;

    if(position==1)
    {
              delete_head();
              return;
    }

    node *current = head;
    node *temp;
    int count = 0;

    do
    {
              count++;
              temp = current;
              current = current->next;
    }   while(current->next != head && count<position-1);

    if(count==position-1)
    {
              if(current==tail)
              {
                  delete_tail();
                  return;
              }

              temp->next = current->next;
              current->next->previous = temp;
              free(current);
              return;
    }

    printf("Position (%d) does not exist!\n", position);
}

// Print the list in FORWARD order and REVERSE order
void print_list()
{
    printf("FORWARD order print:\n");
    print_forward_order();

    printf("REVERSE order print:\n");
    print_reverse_order();
}

// Print FORWARD ORDER all node's data of a circular doubly linked list
void print_forward_order()
{
    if(head==NULL)  return;

    node *current = head;

    do
    {
              printf("%d ", current->number);
              current = current->next;
    }   while(current != head);

    printf("\nList Length: %d\n", getListLength());
}

// Print REVERSE ORDER all node's data of a circular doubly linked list
void print_reverse_order()
{
    if(head==NULL)  return; // also can check `tail==NULL`. both are same

    node *current = tail;

    do
    {
              printf("%d ", current->number);
              current = current->previous;
    }   while(current != tail);

    printf("\nList Length: %d\n", getListLength());
    puts("\n");
}

//Determine the number of nodes in circular doubly linked list
int getListLength()
{
    if(head==NULL) return 0;

    int count = 0;
    node *current = head;

    do
    {
              count++;
              current = current->next;
    }   while(current != head);

    return count;
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
            //BannerAdsWidgets(),
          ],
        ),
      ),
    );
  }
}
