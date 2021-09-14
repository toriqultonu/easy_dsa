import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class SinglyLinkedList extends StatelessWidget {
  static String id = 'singlylinkedlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Singly ',
          str2: 'Linked List',
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
                  DataTitle(title: 'Insert an item to a Linked List',),
                  kDescriptionGap,
                  Description(description: 'লিংকড লিস্ট হচ্ছে একটা নােডের সাথে আরেকটা নাড তাদের নিজেদের মেমরি অ্যাড্রেসের মাধ্যমে যুক্ত থাকা। প্রথম নােডের মধ্যে বলা থাকে দ্বিতীয় নােডের মেমরি অ্যাড্রেস। দ্বিতীয় নােডের মধ্যে বলা থাকে তৃতীয় নােডের memory address. আর শেষ নােডের মধ্যে পরের কোনাে নােডের অ্যাড্রেস বলা থাকে না। যেহেতু শেষ নোড, তাই পরের নােডের অ্যাড্রেস হিসেবে বলা থাকে NULL. অর্থাৎ এই নােডের পরে যাওয়ার মত কোন নােড নাই। ধরাে শেষের নােডের নাম lastNode. আগের পর্বের মত এই নােডও দুটি ডেটার সমন্বয়ে গঠিত। number ও next. next হচ্ছে পরের নোডের অ্যাড্রেস। যেহেতু এটা শেষ নােড তাই এর অ্যাড্রেসে বলা থাকবে NULL. এখন আমরা যদি এই নােডের পরে আরেকটা নােড যুক্ত করতে চাই তাহলে সিসটেমটা হবে নতুন একটা নােড তৈরি করা।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/linkedlist/linkedlist4.gif',),
                  kTitleGap,
                  Description(description: 'ধরাে নতুন নােডের নাম দিলাম newNode. এর number variable এ ডেটা অ্যাসাইন করলাম। এরপর এর next ভেরিয়েবলে রাখব NULL. কারণ এই নতুন নোডটাই হতে যাচ্ছে আমাদের লিস্টের শেষ নােড। এই নােডটা কেবল তৈরি হল। এখনো কিন্তু লিস্টে যোগ হয় নি। কার সাথে এটাকে জুড়ে দিতে হবে? আমাদের existing list এর last node এর সাথে এটাকে লিংক করতে পারলেই কিন্তু এটা লিস্টের সাথে যুক্ত হয়ে যাবে। তাই এটাকে লেজ হিসেবে যুক্ত করার জন্য lastNode এর next এর মান হিসেব অ্যাসাইন করে দিব newNode এর মেমরি অ্যাড্রেস। এই next এর মান আগে ছিল | NULL. কিন্তু এখন সে পয়েন্ট করছে newNode-কে। ব্যস! আমাদের লিস্টে নতুন একটা নোড যুক্ত হয়ে গেল। মজা না?',),
                  kDescriptionGap,
                  Description(description: 'একই ঘটনা ঘটবে যদি মাঝের কোন নােডের পরে আমাদের নতুন নাডকে যোগ করতে চাই। উপরের ছবিটা দেখলে আরাে পরিষ্কার হবে ব্যাপারটা। প্রথম ছবিতে, প্রথম নোডটা দ্বিতীয় নোডকে পয়েন্ট করে আছে। নতুন একটা নাড বানানা হয়েছে। কিন্তু সেটাকে কেউ পয়েন্ট করে নাই। দ্বিতীয় ছবিতে দেখা যাচ্ছে প্রথম নােডের next variable এ রাখা হয়েছে newNode এর মেমরি অ্যাড্রেস আর newNode এর next এ রাখা হয়েছে পরের নােডের memory address.',),
                  kDescriptionGap,
                  Description(description: 'main function এর উপরে একটা স্ট্রাকচার ডিক্লেয়ার করা হলাে এবং এর ভেরিয়েবল ডিক্লেয়ার করা হলাে গত পর্বের মত করেই।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
struct linked_list
{
    int number;
    struct linked_list *next;
};

typedef struct linked_list node;
node *head=NULL, *last=NULL;
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Insert an item at the Last position of Linked List',),
                  kDescriptionGap,
                  Description(description: 'কোনাে লিস্টের শেষে নতুন কোন আইটেম যোগ করার জন্য নিচের ফাংশনটি ব্যবহার করা যায়। এতে প্রথমে নতুন একটা নােড (temp_node) তৈরি করে তাতে ডেটা স্টোর করা হয়েছে। আর next variable এ রাখা হয়েছে NULL (যেহেতু এটাই শেষ নােড হতে যাচ্ছে)। আর এই নতুন নােডের মেমরি অ্যাড্রেস রাখা হচ্ছে আগের লাস্ট নোডের next নামক variable এ।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void insert_at_last(int value)
{
    node *temp_node;
    temp_node = (node *) malloc(sizeof(node));

    temp_node->number=value;
    temp_node->next=NULL;

    //For the 1st element
    if(head==NULL)
    {
              head=temp_node;
              last=temp_node;
    }
    else
    {
              last->next=temp_node;
              last=temp_node;
    }

}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'IF condition এ চেক করা হচ্ছে ইনসার্ট করতে চাওয়া নােডটা কি লিস্টের প্রথম নেোড কিনা। লিস্টে কোনাে আইটেম নাই এমন অবস্থায় যদি এই ফাংশন কল করা হয় তখন এই কন্ডিশনটি কাজ করবে। head এর জন্য memory allocate করা না থাকলে head==NULL এই শর্তটি সত্য হবে। তখন head = temp_node; করার মাধ্যমে head নামক নোডের মেমরি অ্যাড্রেস হিসেবে বলে দেয়া হলো যে, temp_node এর জন্য যেই memory allocate করা হয়েছে সেটাই হবে head এর মেমরি অ্যাড্রেস। আর এটিই যেহেতু প্রথম নোড আর এটাই এখন পর্যন্ত একমাত্র নোড তাই last নােডও head নােডকেই পয়েন্ট করবে।',),
                  kDescriptionGap,
                  Description(description: 'যদি লিস্টে আগে থেকে এক বা একাধিক নোড থেকে থাকে তাহলে ELSE block-টা কাজ করবে। সেক্ষেত্রে লিস্টের last নােডটার next variable-টা স্টোর করবে temp_node এর মেমরি অ্যাড্রেস। তখন temp_node হয়ে যাবে শেষ নােড, তাই last = temp_node; করার মাধ্যমে last নােডের নিজের মেমরি অ্যাড্রেসকে আপডেট করে দেয়া হল। এই মুহুর্তে last নােডের মেমরি ্যাড্রেসের মাধ্যমে number প্রিন্ট করতে চাইলে দেখা যাবে temp_node এর number-ই প্রিন্ট করবে। কারণ দুইটা নােডের আলাদা নাম হলেও এরা মূলত একই মেমরি অ্যাড্রেসের একটা নােডকে পয়েন্ট করে আছে। ',),
                  kTitleGap,
                  DataTitle(title: 'Insert an item at the first position of Linked List ',),
                  kDescriptionGap,
                  Description(description: 'কোনাে একটা লিস্টের শুরুতে যদি একটা নােড যোগ করতে চাই সেক্ষেত্রে নতুন একটা নােড বানাতে হবে। সেই নােডের next এ assign করতে হবে head এর মেমরি অ্যাড্রেস। এরপর head এর অ্যাড্রেসও চেঞ্জ করে দিতে হবে নতুন নােডের অ্যাড্রেস দিয়ে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
void insert_at_first(int value)
{
    node *temp_node = (node *) malloc(sizeof(node));

    temp_node->number=value;
    temp_node->next = head;

    head = temp_node;
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Insert an item middle in the Linked List',),
                  kDescriptionGap,
                  Description(description: 'আমাদের উদ্দেশ্য হচ্ছে লিস্টের কোনাে একটা value (number) এর পরে নতুন একটা নোড insert করা। ধরাে লিস্টে A নামের একটা নোড আছে। এই নোডের number = key. next ভেরিয়েবলটা স্টোর করছে B নামের আরেকটা নােডের মেমরি অ্যাড্রেস। অর্থাৎ A->next = B. আমরা চাই যেই নােডের number হিসেবে key রয়েছে এরপরে নতুন একটা নোড যোগ করতে। ',),
                  kDescriptionGap,
                  Description(description: 'তাহলে A->next = newNode (অর্থাৎ A নোডটা পয়েন্ট করবে newNode-কে), newNode->next = B (অর্থাৎ newNode টা পয়েন্ট করছে B নােডকে)। এভাবে আমরা একটা নতুন নােডকে লিস্টের মাঝে যোগ করে দিতে পারি।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void insert_after(int key, int value)
{
    node *myNode = head;
    int flag = 0;

    while(myNode!=NULL)
    {
              if(myNode->number==key)
              {
                  node *newNode = (node *) malloc(sizeof(node));
                  newNode->number = value;
                  newNode->next = myNode->next;
                  myNode->next = newNode;

                  printf("%d is inserted after %d\n", value, key);

                  flag = 1;

                  break;
              }
              else
                  myNode = myNode->next;
    }

    if(flag==0)
              printf("Key not found!\n");

}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'উপরের ফাংশনে, myNode পয়েন্ট করেছে head নােডকে। উদ্দেশ্য হচ্ছে head-এর মাধ্যমে পুরোে লিস্টে key খুঁজে দেখা। যেই নােডের number হিসেবে key-কে পাওয়া যাবে সেই নােডের পরেই নতুন নােড যুক্ত হবে। সেই কাজটাই করা হয়েছে ৮ নাম্বার লাইনের IF block এ। এই ব্লকে নতুন একটা নােডের (newNode) জন্য memory allocate করা হয়েছে। newNode এর number এ value বসানাে হয়েছে। আর next এ বসানাে হয়েছে myNode এর next এর ভ্যালু। অর্থাৎ myNode যেই নােডটাকে আগে পয়েন্ট করত সেটাকে এখন থেকে পয়েন্ট করবে newNode. আর myNode এখন থেকে পয়েন্ট করবে newNodeকে। তাই myNode এর next এর মানও আপডেট করা হয়েছে newNode এর মেমরি অ্যাড্রেস দিয়ে।',),
                  kDescriptionGap,
                  Description(description: 'IF যদি সত্য না হয় তাহলে ELSE এর myNode = myNode-&gt;next; এর মাধ্যমে লিস্টের পরের নােডের মেমরি অ্যাড্রেসকে myNode পয়েন্ট করবে। এরপর লুপ ঘুরে আবার চেক করবে পরের নােডের number==key কিনা? যদি কখনো number==key পাওয়া যায় তাহলে উপরের বর্ণনা অনুযায়ী IF block কাজ করবে। কাজের শেষে flag 1 করে দিয়ে লুপ break করবে। যদি number==key পাওয়া না যায় তাহলে flag এর মান 0-ই থেকে যাবে। লুপের বাইরে এসে আরেকটা চেক করবে। flag 0 হলে অর্থাৎ key খুঁজে না পেলে প্রিন্ট করে দিবে "Key not found"',),
                  kDescriptionGap,
                  Description(description: 'অ্যারের মাঝে যদি কোন আইটেম যােগ করতে চাই তাহলে প্রসেসটা কিন্তু লিংকড লিস্টের চেয়ে জটিল আর slow। কারণ অ্যারের মাঝে কোনা একটা নতুন আইটেম যোগ করতে চাইলে যেই ইনডেক্সে যোগ করতে চাই তার পরের সবগুলাে ইনডেক্সের ভ্যালুগুলাকে এক ঘর করে পেছনে সরাতে হবে। কিন্তু লিংকড লিস্টের ক্ষেত্রে সেই ঝামেলা করা লাগছে না। তাই অনেকটা runtime বেঁচে যাচ্ছে।',),
                  kTitleGap,
                  DataTitle(title: 'Delete an item from Linked List',),
                  kDescriptionGap,
                  Description(description: 'ধরাে A, B, C তিনটা নােড। A পয়েন্ট করে আছে B কে, B পয়েন্ট করে আছে C কে। আমরা B কে লিস্ট থেকে ডিলেট করতে চাই। তাহলে সহজ কাজটা হলো A কে পয়েন্ট করতে দিব C কে। A যদি C কে পয়েন্ট করে তাহলে B কে কেউ পয়েন্ট করছে না। এই বেচারা এমনিতেই লিস্টের বাইরে চলে যাবে।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/linkedlist/linkedlist5.png',),
                  kTitleGap,
                  Description(description: 'ফাংশনে প্যারামিটার হিসাবে value পাঠানাে হচ্ছে। প্রথম যেই নােডের number এর মান value এর সমান হবে সেই নােডটাকে ডিলেট করা হবে। এজন্য value এর সাথে match করা নোডের অ্যাড্রেস, এই নােডের আগের নােডের অ্যাড্র্রস ও পরের নােডের আড্রেস জানা থাকা লাগবে। কারণ আমাদের লক্ষ্য হচ্ছে সংশ্লিষ্ট নােডের পরের নাডের সাথে এর আগের নাডের লিংক করায় দেয়া। যেন মাঝ থেকে নােডটা ডিলেট হয়ে যায়। ',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 250,
                    child: DartCodeViewer(r'''
void delete_item(int value)
{
    node *myNode = head, *previous=NULL;
    int flag = 0;

    while(myNode!=NULL)
    {
              if(myNode->number==value)
              {
                  if(previous==NULL)
                      head = myNode->next;
                  else
                      previous->next = myNode->next;

                  printf("%d is deleted from list\n", value);

                  flag = 1;
                  break;
              }

              previous = myNode;
              myNode = myNode->next;
    }

    if(flag==0)
              printf("Key not found!\n");
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'myNode পয়েন্ট করে আছে head-কে। myNode এর মাধ্যমে পুরাে লিস্ট traverse করে দেখা হবে myNode->number==value পাওয়া যায় কিনা। যদি প্রথম নোডেই পাওয়া না যায় তাহলে previous = myNode; এবং myNode = myNode->next; করা হল। কারণ প্রথম নােডে পাওয়া না গেলে পরের নােডে খুঁজতে হবে। পরের নোডে যাওয়ার ফলে, myNode-টা কিন্তু previous node হয়ে যাবে। তাই previous = myNode করা হল। আর পরের নাডে যাওয়ার জন্য myNode = myNode->next করা হলো।',),
                  kDescriptionGap,
                  Description(description: 'যদি value খুঁজে পাওয়া যায় তাহলে প্রথমেই চেক করা হচ্ছে previous==NULL কিনা। এটা সত্য হবার মানে হচ্ছে লিস্টের প্রথম নােডেই value পাওয়া গেছে। head এ যদি ভ্যালু পাওয়া যায় এর আগে কিন্তু কোনাে নােড নাই। তাই previous এর মান NULL. সেক্ষেত্রে head=myNode->next. অর্থাৎ head শুরুতে যেই নােডকে পয়েন্ট করত (দ্বিতীয় নোড), সেই নােডটাই এখন হয়ে গেল head node. দ্বিতীয় নােডটাই head হয়ে যাওয়াতে আগের head-টা ভ্যানিস হয়ে যাবে। ',),
                  kDescriptionGap,
                  Description(description: 'আর value-টি প্রথম নােডেই পাওয়া না গেলে ১৩ নাম্বার লাইনটা কাজ করবে previous->next = myNode->next. অর্থাৎ value টা পাওয়া গেছে myNode এ। একে ডিলেট করতে previous নােডকে পয়েন্ট করতে বলা হচ্ছে myNode এর পরের নোডকে (myNode->next). ফলে previous node টি পয়েন্ট করছে myNode এর পরের নোডকে। myNode-কে কেউ পয়েন্ট করছে। না, তাই এটি ডিলেট হয়ে যাবে।',),
                  kDescriptionGap,
                  Description(description: 'এই ডিলেট অপারেশনটা অ্যারের কোনাে আইটেম ডিলেটের চেয়ে efficient. কারণ অ্যারের মাঝ থেকে কোনাে একটা আইটেম ডিলেট করতে হলে সেই আইটেমের পরের সকল আইটেমকে এক ঘর করে বাম দিকে সরিয়ে নিয়ে আসতে হয়। কিন্তু লিংকড লিস্টে সব আইটেমকে সরানাে দরকার হচ্ছে না। দুইটা নােডের লিংক চেঞ্জ করে দিলেই খেল খতম!',),
                  kTitleGap,
                  DataTitle(title: 'Search an item from Linked List',),
                  kDescriptionGap,
                  Description(description: 'উপরের insert আর delete বুঝে থাকলে search বুঝতে সমস্যা হবে না। পরোক্ষ ভাবে কিন্তু আমরা ইনসার্ট, ডিলেট উভয় ক্ষেত্রেই সার্চের কাজটা করেছি।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
void search_item(int value)
{
    node *searchNode = head;
    int flag = 0;

    while(searchNode!=NULL)
    {
              if(searchNode->number==value)
              {
                  printf("%d is present in this list. Memory address is %d\n", value, searchNode);
                  flag = 1;
                  break;
              }
              else
                  searchNode = searchNode->next;
    }

    if(flag==0)
              printf("Item not found\n");

}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'ইনসার্ট-ডিলেটের মত করে head থেকে লুপ ঘুরিয়ে সার্চ করা হচ্ছে। কোনা নােডের মেমরি অ্যাড্রেস হিসেবে NULL পাওয়ার আগ পর্যন্ত এই সার্চিং চলতে থাকবে। যদি value-কে খুঁজে পাওয়া যায় তাহলে একটা মেসেজ প্রিন্ট করে loop break করে দেয়া হচ্ছে। খুঁজে না পেলে লুপের বাইরে এসে প্রিন্ট করা 2662 "Item not found".',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>

struct linked_list
{
    int number;
    struct linked_list *next;
};

typedef struct linked_list node;
node *head=NULL, *last=NULL;

void create_linked_list();
void print_linked_list();
void insert_at_last(int value);
void insert_at_first(int value);
void insert_after(int key, int value);
void delete_item(int value);
void search_item(int value);

int main()
{
    int key, value;

    //Create a linked list
    printf("Create Linked List\n");
    create_linked_list();
    print_linked_list();


    //Insert value at last position to existing Linked List
    printf("\nInsert new item at last\n");
    scanf("%d", &value);
    insert_at_last(value);
    print_linked_list();


    //Insert value at first position to existing Linked List
    printf("\nInsert new item at first\n");
    scanf("%d", &value);
    insert_at_first(value);
    print_linked_list();


    //Insert value after a defined value to existing Linked List
    printf("\nEnter a KEY (existing item of List), after that you want to insert a value\n");
    scanf("%d", &key);
    printf("\nInsert new item after %d KEY\n", key);
    scanf("%d", &value);
    insert_after(key, value);
    print_linked_list();


    //Search an item from Linked List
    printf("\nEnter an item to search it from List\n");
    scanf("%d", &value);
    search_item(value);


    //Delete value from List
    printf("\nEnter a value, which you want to delete from list\n");
    scanf("%d", &value);
    delete_item(value);
    print_linked_list();


    return 0;
}


/*
    User Defined Functions
*/
void create_linked_list()
{
    int val;

    while(1)
    {
              printf("Input a number. (Enter -1 to exit)\n");

              scanf("%d", &val);

              if(val==-1)
                  break;

              insert_at_last(val);
    }

}


void insert_at_last(int value)
{
    node *temp_node;
    temp_node = (node *) malloc(sizeof(node));

    temp_node->number=value;
    temp_node->next=NULL;

    //For the 1st element
    if(head==NULL)
    {
              head=temp_node;
              last=temp_node;
    }
    else
    {
              last->next=temp_node;
              last=temp_node;
    }

}


void insert_at_first(int value)
{
    node *temp_node = (node *) malloc(sizeof(node));

    temp_node->number=value;
    temp_node->next = head;

    head = temp_node;
}

void insert_after(int key, int value)
{
    node *myNode = head;
    int flag = 0;

    while(myNode!=NULL)
    {
              if(myNode->number==key)
              {
                  node *newNode = (node *) malloc(sizeof(node));
                  newNode->number = value;
                  newNode->next = myNode->next;
                  myNode->next = newNode;

                  printf("%d is inserted after %d\n", value, key);

                  flag = 1;


                  break;
              }
              else
                  myNode = myNode->next;
    }

    if(flag==0)
              printf("Key not found!\n");

}


void delete_item(int value)
{
    node *myNode = head, *previous=NULL;
    int flag = 0;

    while(myNode!=NULL)
    {
              if(myNode->number==value)
              {
                  if(previous==NULL)
                      head = myNode->next;
                  else
                      previous->next = myNode->next;

                  printf("%d is deleted from list\n", value);

                  flag = 1;
                  free(myNode); //need to free up the memory to prevent memory leak
                  break;
              }

              previous = myNode;
              myNode = myNode->next;
    }

    if(flag==0)
              printf("Key not found!\n");
}


void search_item(int value)
{
    node *searchNode = head;
    int flag = 0;

    while(searchNode!=NULL)
    {
              if(searchNode->number==value)
              {
                  printf("%d is present in this list. Memory address is %d\n", value, searchNode);
                  flag = 1;
                  break;
              }
              else
                  searchNode = searchNode->next;
    }

    if(flag==0)
              printf("Item not found\n");

}


void print_linked_list()
{
    printf("\nYour full linked list is\n");

    node *myList;
    myList = head;

    while(myList!=NULL)
    {
              printf("%d ", myList->number);

              myList = myList->next;
    }
    puts("");
}
© 2021 GitHub, Inc.
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
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
