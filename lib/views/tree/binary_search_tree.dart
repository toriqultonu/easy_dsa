import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class BinarySearchTRee extends StatelessWidget {
  static String id = 'binarysearchTRee';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'বাইনারি সার্চ',
          str2: ' ট্রি',
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
                  DataTitle(title: 'BST – Binary Search Tree',),
                  kDescriptionGap,
                  Description(description: 'বাইনারি সার্চ অ্যালগরিদম শেখার সময় আমরা দেখেছি, যদি একটা অ্যারের মানগুলো সর্টেড থাকে। তাহলে তাতে বাইনারি সার্চ অ্যালগরিদম ব্যবহার করে কোনো ডেটা সার্চ করলে এর রান টাইম হয় O(log n). Binary Search Algorithm এ যেমন আমরা অ্যারের ঠিক মধ্যখানের ডেটার সাথে সার্চিং আইটেমের তুলনা করে সিদ্ধান্ত নিই যে কোন অংশকে বাদ দিব। BST এর ক্ষেত্রেও একই ধরনের একটা আইডিয়া কাজ করবে।',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree15.png',),
                  kDescriptionGap,
                  Description(description: 'অ্যারের মত এই ট্রি থেকেও কোনাে একটা মান b PSI60 O(log n) running time naeia হবে। তাই এই ট্রি এর নাম দেয়া হয়েছে। বাইনারি সার্চ ট্রি। বাইনারি সার্চ ট্রির ডেটাগুলা একটা বিশেষ ফ্যাশনে সর্টেড হয়ে থাকে। তা হচ্ছে যে কোনাে নােডের left sub-tree এর সবগুলা নােডের মান হবে ঐ নােডের চেয়ে ছােট বা সমান। আর right sub-tree এর সবগুলা নােডের মান হবে ঐ নােডের মানের চেয়ে বড়। এভাবে ডেটাগুলাে সাজানাে থাকলে worst case এর ক্ষেত্রেও O(log n) টাইমে যে কোনাে ডেটা সার্চ করা সম্ভব।',),
                  kDescriptionGap,
                  Description(description: 'এই সর্টেড হয়ে থাকাটা যেমন রুটের ক্ষেত্রে প্রযােজ্য, একই ভাবে অন্যান্য সকল নােডের ক্ষেত্রেও প্রযােজ্য। একটা বাইনারি সার্চ ট্রির root এর বাম পাশের সকল নােডগুলো হবে রুটের মানের চেয়ে ছােট বা সমান। ডানপাশের সকল নােডের মান হবে রুটের মানের চেয়ে বড়। একই ভাবে রুটের বাম পাশের চাইল্ডের ক্ষেত্রেও এটা সত্য হবে। এই চাইল্ডের যদি আরো চাইল্ড থাকে তাহলে দেখা যাবে এই চাইলের বামের সকল নােডগুলাে এর চেয়ে ছােট বা সমান। ডানেরগুলো বড়। কয়েকটা integer value ইনসার্ট করে নিও। '),
                  kDescriptionGap,
                  Description(description: 'আমরা বাইনারি সার্চ ট্রি এর সংজ্ঞায় বলছি বামের নাডের মানগুলা ছোেট বা সমান, ডানেরগুলাে বড়। কিন্তু অনেক জায়গায় হয়ত দেখবে বামের মানগুলাে ছােট, ডানের মানগুলো সমান বা বড়। উভয়টাই সঠিক। তুমি যেভাবে ইচ্ছা ইমপ্লিমেন্ট করতে পারাে।'),
                  kDescriptionGap,
                  Description(description: 'Prerequisites: কোড করার জন্য নিচের টপিকগুলো সম্পর্কে ধারনা থাকতে হবে। তা না হলে এই পােস্টের বাকি অংশ বুঝতে সমস্যা হবে।',),
                  kDescriptionGap,
                  Description(description: '* Structure',),
                  Description(description: '* Recurtion',),
                  Description(description: '* Linked List',),
                  kTitleGap,
                  DataTitle(title: 'Operations of Tree',),
                  kTitleGap,
                  Description(description: 'অন্যান্য ডেটা স্ট্রাকচারের মত ট্রি এরও কিছু ব্যাসিক অপারেশন রয়েছে। সেগুলো হচ্ছেঃ',),
                  kDescriptionGap,
                  Description(description: '* Insert - নতুন কোনাে child ট্রিতে যুক্ত করা',),
                  Description(description: '* Search - কোনাে একটা item ট্রিতে সার্চ করে দেখা',),
                  Description(description: '* Delete - কোনাে একটা child ট্র থেকে মুছে দেয়া',),
                  Description(description: '* In-order Traversal - প্রথমে left sub-tree ভিজিট করবে, এরপর root, অতঃপর right sub-tree ভিজিট করবে',),
                  Description(description: '* Pre-order Traversal - প্রথমেই root ভিজিট হবে, এরপর যথাক্রমে left sub-tree ও right sub-tree ভিজিট হবে',),
                  Description(description: '* Post-order Traversal – প্রথমেই left sub-tree এরপর ভিজিট হবে right sub-tree সবার শেষ ভিজিট হবে root',),
                  kTitleGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Binary Search Tree Traversal', ID: 'treetraversal',),
                  kDescriptionGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Find max and min in BST', ID: 'maxmin',),
                  kTitleGap,
                  DataTitle(title: 'Implementation of Binary Search Tree – BST',),
                  kDescriptionGap,
                  DataTitle(title: 'Create a node',),
                  kDescriptionGap,
                  Description(description: 'এটা যেহেতু বাইনারি ট্রি তাই প্রতিটা নােডে সর্বোচ্চ দুটি চাইল্ড থাকতে পারে। সুতরাং একটা স্ট্রাকচার বানাতে হবে যাতে ডেটা হিসাবে থাকবে একটা int type এর variable. আর child node এর মেমরি অ্যাড্রেস স্টোর করার জন্য দুটি pointer type variable.',),
                  kDescriptionGap,
                  Description(description: 'Main function এর বাইরে globally একটা স্ট্রাকচার বানানো হল এবং root declare করা হল।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
typedef struct tree
{
    int number;
    struct tree *leftChild;
    struct tree *rightChild;

} node;
node *root=NULL;
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'আপাতত রুটের মান NULL করে রাখা হয়েছে। insert করার function এর ভিতরে রুটের জন্য memory allocate করার জন্য।',),
                  kDescriptionGap,
                  DataTitle(title: 'Insert a node',),
                  kDescriptionGap,
                  Description(description: 'ইনসার্টের জন্য একটা ফাংশন লিখা হবে। ফাংশন বডির শুরুতেই একটা temporary node এর জন্য memory allocate করা হবে। ফাংশনের প্যারামিটারে পাঠানো ভ্যালুটা নতুন নোডের number ভ্যারিয়েবলে assign করে child দুটির মান NULL করে রাখা হবে। কারণ আমরা এই নােডের ব্যাপারেই এই মুহুর্তে আগ্রহী। এর বাচ্চাকাচ্চা নেয়ার চিন্তা আপাতত নাই।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
void insertNode(int value)
{
    node *tempNode;
    node *currentNode=NULL;
    node *parentNode=NULL;

    tempNode = (node *) malloc(sizeof(node));
    tempNode->number = value;

    //For the very first call
    if(root==NULL)
    {
              root = tempNode;
    }
    else
    {
              currentNode = root;
              parentNode = NULL;

              while(1)
              {
                  parentNode = currentNode;

                  if(value <= parentNode->number)
                  {
                      currentNode = currentNode->leftChild;

                      if(currentNode==NULL)
                      {
                          parentNode->leftChild = tempNode;
                          return;
                      }
                  }
                  else
                  {
                      currentNode = currentNode->rightChild;

                      if(currentNode==NULL)
                      {
                          parentNode->rightChild = tempNode;
                          return;
                      }
                  }

              }
    }
}

                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'এরপর চেক করা হবে রুট নােডের মান NULL কিনা। প্রথমবার যখন এই ফাংশনকে কল করা হবে তখন এই IF সত্য হবে। তখন এই নতুন বানানো নোডটাকেই রুট নোড হিসাবে assign করে দেয়া হচ্ছে। আর যদি এই IF সত্য না হয় তাহলে কিছু হিসাব নিকাশ করে নােডটা ট্রি এর সাথে জুড়ে দিতে হবে। যেহেতু কিছু শর্ত (left child এর মান ছোট বা সমান, right child এর মান বড়) মানতে হবে তাই এই নােডটাকে যে কোনাে নােডের বাচ্চা হিসেবে জুড়ে দেয়া যাবে না।',),
                  kDescriptionGap,
                  Description(description: 'ELSE block 43 EFO currentNode a parentNode TGAS aGS NULL assign করা হয়েছে। আমাদের উদ্দেশ্য হচ্ছে রুট থেকে ট্রিতে ট্রাভার্স করা শুরু করব। ফাংশন প্যারামিটার হিসাবে যেই ভ্যালু পাঠানাে হয়েছে সেই ভ্যালুর সাথে প্রতিটা নোডের ভ্যালুকে চেক করব। যদি দেখা যায় value এর মান ঐ নােডের number এর চেয়ে ছোেট বা সমান তাহলে ঐ নোডের leftChild এ যেতে হবে। leftChild এ যাওয়ার পর এটাই কিন্তু আমাদের currentNode হয়ে যাবে। এবার আবার চেক করব value এই নতুন হওয়া currentNode এর number এর চেয়ে ছােট নাকি বড়। ছােট বা সমান হলে আবার এই নােডের leftChild এ যাব, অন্যথায় rightChild এ যাব। leftChild এর মাধ্যমে কোনাে একটা নােডে যাওয়ার পর যদি দেখা যায় ঐ নোডটা (currentNode) NULL (কোডের ২৮ নাম্বার লাইন) তাহলে কী বুঝব? বুঝব parentNode আসলে একটা leaf. এই নােডের এখনাে কোনাো বাচ্চাকাচ্চা হয় নাই। parentNode এর leftChild এর মেমরি অ্যাড্রেস hold করছে আমাদের currentNode. এই নােড তাই এখনা NULL. আমরা যেই নতুন নোডটা বানিয়েছি সেটাই হবে parentNode নোডের বাম পাশের বাচ্চা বা leftChild. আর যদি parentNode এর rightChild এর মেমরি অ্যাড্রেস NULL পাওয়া যায় (কোডের ৩৮ নাম্বার লাইন) তখন নতুন নােডের memory address-কে পয়েন্ট করবে parentNode এর rightChild.',),
                  kDescriptionGap,
                  Description(description: 'যতক্ষণ পর্যন্ত কোনাে NULL node পাওয়া না যাবে ততক্ষণ লুপ ঘুরতে থাকবে। কোনো নোডের child এর মেমরি অ্যাড্রেস NULL পাওয়া গেলে নতুন নোডটাকে সেখানে উপরের মত করে জুড়ে দিয়ে ফাংশনের কাজ return; কীওয়ার্ডের এর মাধ্যমে শেষ করতে হবে।',),
                  kDescriptionGap,
                  Description(description: 'এভাবে যদি কোনাে একটা ট্রিতে মান ইনসার্ট হতে থাকে তাহলে সব সময় যে কোনো নোডের leftChild এর number এর মান সেই নােডের চেয়ে ছােট বা সমান হবে এবং rightChild এর number এর মান বড় হবে।',),
                  kDescriptionGap,
                  Description(description: 'ফাংশনের কোডটা বেশ বড়। নিজে হাতে কোড না লিখে কপি-পেস্ট করে রান করলে কোডগুলো বুঝতে সমস্যা হবে। তাই পরামর্শ রইলো প্রয়োজনে দেখে দেখে নিজ হাতে টাইপ করার। এতে প্রতি লাইন বাই লাইন কোড বুঝতে সুবিধা হবে।',),
                  kTitleGap,
                  DataTitle(title: 'Search on BST',),
                  kTitleGap,
                  Description(description: 'উপরের এত আয়ােজন শুধু আমাদের ডেটাগুলোকে sorted রাখার জন্য। অ্যারেতে ডেটা ইনসার্ট করা সহজ। কিন্তু একটা সর্টেড অ্যারেতে ডেটা ইনসার্ট করে সেটাকে সর্ট করা কিন্তু বেশ costly. তােমাকে অ্যারের নির্দিষ্ট ইনডেক্স খুঁজে বের করতে হবে যেখানে তােমার নতুন ডেটা ইনসার্ট করতে হবে। এরপর সেই ইনডেক্স থেকে অ্যারের শেষ পর্যন্ত সবগুলো ইনডেক্সের ডেটাগুলোকে এক ইনডেক্স করে ডানে সরিয়ে ফাঁকা হওয়া ইনডেক্সে নতুন মান assign করতে হবে। Worst case এর ক্ষেত্রে (যদি অ্যারের শুরুতে কোনাে মান ইনসার্ট করার দরকার হয়) শুধু সর্ট করার জন্যেই O(n) সময় লাগবে। এরপর সার্চের জন্য ধরাে আরোে O(log n). এই সময়টা বাঁচানার জন্যেই BST. সর্ট করতে worst case এর ক্ষেত্রেও সময় লাগছে O(log n). কারণ আমরা সব ডেটাকে চেক করছি না বা সরাচ্ছি না। প্রতি iteration এ ডেটার পরিমাণ অর্ধেক হয়ে যাচ্ছে। অর্ধেক হতে হতে এক পর্যায়ে গিয়ে আমাদের নতুন ডেটা ইনসার্ট হয়। তাই অ্যারের O(n) এর তুলনায় এর efficiency অনেক ভাল (O(log n)).',),
                  kDescriptionGap,
                  Description(description: 'Insert করার ফাংশন বুঝে গিয়ে থাকলে সার্চ করার ফাংশনও বুঝবা। একই আইডিয়া কাজে লাগিয়ে প্রতি iteration এ ক্ষুদ্র থেকে ক্ষুদ্রতর sub-tree তে ট্রাভার্স করে আমাদের কাংক্ষিত আইটেম খুঁজে বের করব।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 300,
                    child: DartCodeViewer(r'''
void searchOnTree(int value)
{
    node *currentNode = root;
    int flag = 0;

    while(1)
    {
              if(value == currentNode->number)
              {
                  flag = 1;
                  break;
              }
              else if(value<=currentNode->number)
                  currentNode = currentNode->leftChild;
              else
                  currentNode = currentNode->rightChild;

              if(currentNode==NULL)
                  break;

    }

    if(flag==1)
              printf("\n%d is found on Tree.\n\n", currentNode->number);
    else
              printf("\n%d is not found on Tree.\n\n", value);
}
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'root node থেকে সবগুলা নােডে ট্রোভার্স করব, যতক্ষণ না পর্যন্ত আইটেম পাওয়া যায় এবং কোনোে নােডের মেমরি অ্যাড্রেস NULL না হয়। যদি নোডের number ও value সমান হয় তাহলে flag = 1 করে লুপ ব্রেক করতে হবে। লুপের বাইরে flag এর মানের উপর ভিত্তি করে decision নেয়া হচ্ছে। value-টা ট্রিতে পাওয়া গেছে কিনা। লুপের ভিতরে যদি কোনাে একটা স্টেজে currentNode-&gt;number==value না হয় তাহলে চেক করতে হবে value টা নােডের number এর চেয়ে ছােট নাকি বড়। যদি value ছােট বা সমান হয় তাহলে ইনসার্টের মতই currentNode এর leftChild এ গিয়ে খুঁজে দেখতে হবে, অন্যথায় rightChild এ গিয়ে খুঁজতে হবে। কোনো একটা পর্যায়ে গিয়ে যদি কোনাে নােডের অ্যাড্রেস হিসাবে NULL value পাওয়া যায় তাহলে বুঝতে হবে value-টা ট্রিতে অনুপস্থিত। তখন লুপ ব্রেক করে ফাংশনের কাজ শেষ করতে হবে।',),
                  kTitleGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Delete any node of BST', ID: 'deletenode',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>

typedef struct tree
{
    int number;
    struct tree *leftChild;
    struct tree *rightChild;

} node;
node *root=NULL;

void insertNode(int value);
void searchOnTree(int value);
void preOrderPrint(node *rootNode);
void inOrderPrint(node *rootNode);
void postOrderPrint(node *rootNode);

int main()
{

    insertNode(45);
    insertNode(54);
    insertNode(40);
    insertNode(49);
    insertNode(38);
    insertNode(70);
    insertNode(30);
    insertNode(39);
    insertNode(41);
    insertNode(45);
    insertNode(44);

    printf("\nPre-Order Tree printing:\n");
    preOrderPrint(root);
    puts("");

    printf("\nIn-Order Tree printing:\n");
    inOrderPrint(root);
    puts("");

    printf("\nPost-Order Tree printing:\n");
    postOrderPrint(root);
    puts("");

    searchOnTree(70);

    return 0;
}

void insertNode(int value)
{
    node *tempNode;
    node *currentNode;
    node *parentNode;

    tempNode = (node *) malloc(sizeof(node));
    tempNode->number = value;
    tempNode->leftChild = NULL;
    tempNode->rightChild = NULL;

    //For the very first call
    if(root==NULL)
    {
              root = tempNode;
    }
    else
    {
              currentNode = root;
              parentNode = NULL;

              while(1)
              {
                  parentNode = currentNode;

                  if(value <= parentNode->number)
                  {
                      currentNode = currentNode->leftChild;

                      if(currentNode==NULL)
                      {
                          parentNode->leftChild = tempNode;
                          return;
                      }
                  }
                  else
                  {
                      currentNode = currentNode->rightChild;

                      if(currentNode==NULL)
                      {
                          parentNode->rightChild = tempNode;
                          return;
                      }
                  }

              }
    }
}

void searchOnTree(int value)
{
    node *currentNode = root;
    int flag = 0;

    while(1)
    {
              if(value == currentNode->number)
              {
                  flag = 1;
                  break;
              }
              else if(value<=currentNode->number)
                  currentNode = currentNode->leftChild;
              else
                  currentNode = currentNode->rightChild;

              if(currentNode==NULL)
                  break;

    }

    if(flag==1)
              printf("\n%d is found on Tree.\n\n", currentNode->number);
    else
              printf("\n%d is not found on Tree.\n\n", value);
}

void preOrderPrint(node *rootNode)
{
    if(rootNode==NULL)
              return;

    printf("%d ", rootNode->number);

    preOrderPrint(rootNode->leftChild);
    preOrderPrint(rootNode->rightChild);
}

void inOrderPrint(node *rootNode)
{
    if(rootNode==NULL)
              return;

    inOrderPrint(rootNode->leftChild);

    printf("%d ", rootNode->number);

    inOrderPrint(rootNode->rightChild);
}

void postOrderPrint(node *rootNode)
{
    if(rootNode==NULL)
              return;

    postOrderPrint(rootNode->leftChild);
    postOrderPrint(rootNode->rightChild);

    printf("%d ", rootNode->number);

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
            BannerAdsWidgets(),
          ],
        ),
      ),
    );
  }
}
