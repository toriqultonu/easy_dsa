import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class DeleteNode extends StatelessWidget {
  static String id = 'deletenode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Delete node of',
          str2: 'BST',
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
                  DataTitle(title: 'Delete any node of BST',),
                  kDescriptionGap,
                  Description(description: 'Binary Search Tree - BST এর কোনো একটা নোড ডিলেট করার সময় তিনটা সিচুয়েশন handle করতে হবে। সিচুয়েশনগুলো ভাগ করছি যে কোনো নোডের child এর সংখ্যা দিয়ে। BST এর যে কোনাে নােডকে child এর সংখ্যার হিসাবে তিন ভাগে ভাগ করা যায়। যথাঃ',),
                  kDescriptionGap,
                  Description(description: '১। ০ child - এমন নােড যার কোনা child নাই। আর জানোই তাে এ ধরণের নিঃসন্তান নােডকে বলা হয় leaf.',),
                  kDescriptionGap,
                  Description(description: '২। 1 child - যেই নােডের ১ টা মাত্র child আছে। সেটা left child বা right child যে কোনোটাই হতে পারে।',),
                  kDescriptionGap,
                  Description(description: '৩। 2 child - যে নােডের ২ টা বাচ্চা আছে।',),
                  kDescriptionGap,
                  Description(description: 'যেহেতু আমরা কাজ করছি BST নিয়ে তাই আমাদের স্লোগান হতে পারে &#34;দুটি চাইন্ডের বেশি নয়, একটি হলে ভাল হয়!',),
                  kDescriptionGap,
                  Description(description: 'এই তিন ধরণের নােডকে ডিলেট করার জন্য ভিন্ন ভিন্ন তিনটি পদ্ধতি অবলম্বন করতে হবে। সেগুলো পর্যায়ক্রমে উল্লেখ করছি।',),
                  kTitleGap,
                  DataTitle(title: 'Node has 0 child',),
                  kDescriptionGap,
                  Description(description: 'নিঃসন্তান নােডকে ভ্যানিশ করে দেয়া সবচেয়ে সহজ। কারণ এই বেচারার কোনাে পিছুটান নাই। ছেলে- মেয়ে, নাতি-নাতনীর সাথে কোনাে বন্ধন নাই। যদি এমন নিঃসন্তান নােডকে ডিলেট করার দরকার হয় তাহলে সেই নােডে NULL assign করে দিলেই কিসসা খতম! কোডটা দেখে ফেলিঃ',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 120,
                    child: DartCodeViewer(r'''
if(currentNode->leftChild == NULL && currentNode->rightChild == NULL)
currentNode = NULL;
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kDescriptionGap,
                  Description(description: 'উপরের দেয়া ছবিতে কয়টা leaf node আছে? এখানে থাকা leaf node-গুলো হচ্ছে 30, 39, 41, 44, 46, 49 এবং 59. অর্থাৎ হলুদ রঙের নোডের প্রত্যেকটিকে উপরের এক লাইন কোডের মাধ্যমে delete করে দেয়া যাবে। ',),
                  kTitleGap,
                  DataTitle(title: 'Node has 1 child',),
                  kDescriptionGap,
                  Description(description: 'এই ট্রিতে ১ মাত্র child আছে এমন নােডের সংখ্যা একটি। সেটিকে দেখানো হয়েছে আকাশী রঙ দিয়ে। ট্রি থেকে যদি 70 ডিলেট করতে চাই আর উপরের কোডের মত করে ঐ নােডের মান NULL করে দেই তাহলে কি ডিলেট হবে? উত্তর হচ্ছে নােডটা তাে ডিলেট হবেই সাথে তার চাইল্ডও ডিলেট হবে। কারণ 70 নােডের মান NULL করে দেয়ার মানে হচ্ছে 70 এর parent (54) তার right child হিসেবে NULL কে পয়েন্ট করে থাকবে। ফলে 70 এবং 70 এর left child (59) উভয়েই ট্রি থেকে ডিলেট হয়ে যাবে। কিন্তু আমাদের তাে লক্ষ্য 70 কে ডিলেট করা। 70 টা শুধু ডিলেট হবে, 59 ठিকই ট্রির সাথে থাকবে।',),
                  kDescriptionGap,
                  Description(description: 'এক্ষেত্রে আমরা লিংকড লিস্টের কোনা আইটেম ডিলেট করার সিসটেমটা ফলো করব। তা হচ্ছে 54 এর right child হিসেবে বসিয়ে দিব 59 এর মান। তাহলে 70 কে কেউ পয়েন্ট করছে না। এটা এমনিতেই ডিলেট হয়ে যাবে।নিচের ছবিটা দেখলে আরো ক্লিয়ার হবে।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/tree/tree20.png',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
// node has only right child
if(currentNode->leftChild == NULL)
    currentNode = currentNode->rightChild;
// node has only left child
else if(currentNode->rightChild == NULL) 
    currentNode = currentNode->leftChild;
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'যদি নােডের right child থেকে থাকে তাহলে প্রথম IF BLOCK কাজ করবে অন্যথায় দ্বিতীয়টা কাজ করবে। উদাহরণের ক্ষেত্রে কাজ করবে দ্বিতীয় ব্লক। 70 কে hold করছে যেই নোড সেটাকে currentNode নাম দিলে currentNode-&gt;rightChild == NULL সত্য হবে। তাই রুটকে ডিলেট করতে চাইলে currentNode এর মধ্যে এর leftChild-কে assign করে দিলেই কাজ শেষ। 70 এর leftChild হচ্ছে 59. তাই 70 এর মেমরি অ্যাড্রেস হয়ে যাবে 59 এর মেমরি অ্যাড্রেস। আর এই মেমরি অ্যাড্রেসকে পয়েন্ট করবে 54 এর rightChild.',),
                  kTitleGap,
                  DataTitle(title: 'Node has 2 childred',),
                  kDescriptionGap,
                  Description(description: 'কমলা রঙের নােডগুলাের প্রত্যেকের দুটি করে children আছে। ধরাে আমরা 43 কে ডিলেট করতে চাই। 43 এর নােডকে যদি NULL করে দেই তাহলে এই পুরাে subtree-টাই ডিলেট হয়ে যাবে। তাই এমন ভাবে ডিলেট করতে হবে যেন শুধু এই নোডটাই ডিলেট হয়। বাকি নোডগুলো ট্রি এর সাথেই সাথে। এখন প্রশ্ন হচ্ছে 43 কে ডিলেট করার পর তার ঐ স্থানে কাকে বসাবাে? 43 এর left child নাকি right child. ধরাে right child 45 কে বসালাম 43 এর স্থলে। তাহলে 45 এর তাে নিজের দুইটা চাইল্ড আছে সেটা তাে থাকবেই, 43 এর left child 41 কোথায় বসবে? একটু চিন্তা ভাবনা করাে। আমি ততক্ষণে এক মগ চিনি ছাড়া গ্রীন টি বানিয়ে নিয়ে আসি...',),
                  kDescriptionGap,
                  Description(description: 'আচ্ছা... শুরু করা যাক!',),
                  Description(description: 'আমরা জানি যে BST এর বৈশিষ্ট্য হচ্ছে এর মধ্যকার যে কোনা left subtree হবে parent এর চেয়ে ছােট বা সমান। আর right subtree হবে parent এর চেয়ে বড়। আমরা যখন কোনাে একটা নােডকে ডিলেট করব বা কোনাে একটা নােড insert করব উভয় ক্ষেত্রেই মাথায় রাখতে হবে যেন এই বৈশিষ্ট্য অক্ষুণ্ন থাকে। অর্থাৎ কোনাে নােড insert করার সময় এমন ভাবে করতে হবে যেন এটা যোগ করার ফলে BST এর বৈশিষ্ট্য নষ্ট না হয়। একই ভাবে যখন কোনো নােডকে ডিলেট করব তখনাে এমন ভাবে নােডগুলােকে লিংক করতে হবে যেন BST এর properties ঠিক থাকে। এবার চলাে, দেখি দুই বাচ্চাওয়ালা নােডকে কিভাবে ডিলেট করা যায়।',),
                  kDescriptionGap,
                  Description(description: 'দুটি চাইল্ড আছে এমন নােড ডিলেট করার অ্যালগরিদমঃ',),
                  kDescriptionGap,
                  Description(description: '১। নােডটির right subtree এর minimum value বের করতে হবে।',),
                  kDescriptionGap,
                  Description(description: '২। Minimum value টা ঐ নোডে replace করতে হবে। (রিপ্লেস করলে কিন্তু নোডের আগের মানটা গায়েব হয়ে যাবে)',),
                  kDescriptionGap,
                  Description(description: '৩। Minimum value আগে যেই নােডে ছিল সেই নােডকে delete করতে হবে (তা না হলে তাে duplicate মান থেকে যাবে ট্রি তে!)',),
                  kDescriptionGap,
                  Description(description: 'মাথা ঘুরান্টি দিছে? কোনাে তালগােল পাচ্ছ না কেনো এই তিনটা স্টেপ ফলাে করতে হবে? দাঁড়াও বলছি...',),
                  kDescriptionGap,
                  Description(description: 'আমাদেরকে যেহেতু 43 কে ডিলেট করতে বলা হয়েছে তাই এই নােডের মানের জায়গায় অন্য যে কোনাে মান বসালে এই নােডের মান কিন্তু ডিলেট হয়েই গেল। প্রশ্ন হচ্ছে এই নােডের মানের জায়গায় কেন right subtree এর minimum value বসাবোে? কারণ হচ্ছে BST এর বৈশিষ্ট্য অক্ষুণ্ন রাখার জন্য। চিন্তা করে দেখ... 43 এর right subtree এর সবগুলো মান 43 এর চেয়ে বড়। আমরা যদি randomly 46 কে 43 এর জায়গায় বসাই তাহলে কিন্তু BST এর বৈশিষ্ট্য ঠিক থাকে না। 46 এর right child হবে তখন 45. Right এ তাে parent এর চেয়ে ছােট মান থাকতে পারে না। কিন্তু আমরা যদি রাইট সাবট্রি এর সব চেয়ে ছােট মানটা 43 এর জায়গায় বসাই এবং আদী minimum value এর নােডটা ডিলেট করি তাহলে কিন্তু সব বৈশিষ্ট্য ঠিক থাকে। ',),
                  kDescriptionGap,
                  Description(description: 'একই লজিক দিয়ে আরেকটু ভিন্ন ভাবেও কাজ করানাে যায়। তা হচ্ছে নােডের right subtree এর minimum value না নিয়ে left subtree এর maximum value দিয়ে নোডের মানটা রিপ্লেস করা এবং maximum value এর নোডটাকে ডিলেট করা। চিন্তা করে দেখাে, উভয় ক্ষেত্রেই কিন্তু BST এর properties ঠিক থাকছে। আশা করি বুঝেছ। হয়ত একটু কনফিউশন থাকতে পারে। কোড দেখলে সেটাও দূর হবে। আর এখানে পুরাে delete function-টাই দেখানো হচ্ছে। যেটা 0 child, 1 child এবং 2 child আছে অর্থাৎ সকল নােডের ক্ষেত্রেই কাজ করবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
node * deleteNode(node *currentNode, int value)
{
    if(currentNode==NULL) // empty tree
              return NULL;
    else if(value < currentNode->number) // value is less than node's number. so go to left subtree
              currentNode->leftChild = deleteNode(currentNode->leftChild, value);
    else if(value > currentNode->number) // value is greater than node's number. so go to right subtree
              currentNode->rightChild = deleteNode(currentNode->rightChild, value);
    else // node found. Let's delete it!
    {
              //node has no child
              if(currentNode->leftChild == NULL && currentNode->rightChild == NULL)
              {
                  currentNode = NULL;
              }
              else if(currentNode->leftChild == NULL) // node has only right child
              {
                  currentNode = currentNode->rightChild;
              }
              else if(currentNode->rightChild == NULL) // node has only left child
              {
                  currentNode = currentNode->leftChild;
              }
              else // node has two children
              {
                  node *tempNode = findMinimum(currentNode->rightChild);
                  currentNode->number = tempNode->number;
                  currentNode->rightChild = deleteNode(currentNode->rightChild, tempNode->number);
              }

    }

    return currentNode;
}

                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'কোডের প্রথমাংশ আগেই আলােচনা করা হয়েছে। একদম শেষের ELSE block টা দেখা। যদি currentNode 4 a a a a aF ORGET findMinimum() function call 6 currentNode 43 right subtree 43 minimum value WIte R a O1a memory address বের করা হয়েছে।',),
                  kDescriptionGap,
                  Description(description: 'tempNode এ এখন minimum value এর নোেডটার অ্যাড্রেস আছে। আমরা চাই এই নোডের ভ্যালুটা (number variable) currentNode এর ভ্যালু হিসেবে বসে যাক। সেটাই করা হয়েছে। currentNode-&gt;number = tempNode-&gt;number; এই লাইনের মাধ্যমে। ডিলেট করার অ্যালগরিদমের প্রথম দুইটা স্টেপের কাজ শেষ। এখন ডুপ্লিকেট হয়ে যাওয়া নোডটা ডিলেট করতে হবে।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/tree/tree21.png',),
                  kTitleGap,
                  Description(description: 'currentNode-&gt;rightChild = deleteNode(currentNode-&gt;rightChild, tempNode- &gt;number); এই লাইনের মাধ্যমে রিকার্সিভ কল করা হয়েছে minimum value এর নোডটা NULL করে দেয়ার জন্য। 43 কে ডিলেট করার ক্ষেত্রে এই লাইনে থাকা ফাংশনের প্যারামিটার হিসাবে যাচ্ছে। 45 এর মেমরি অ্যাড্রেস ও 44. Parameter এ 44 পাঠানোর কারণ হচ্ছে ডুপ্লিকেট মানটা ডিলেট করা। এই ফাংশন যখন কল হবে তখন ফাংশন বডির ৫ নাম্বার লাইনের ELSE IF এর ব্লকটা কাজ করবে। কারণ বর্তমান নােডের মান 45 কিন্তু value তে আছে 44. তখন আবারাে ফাংশন কল হবে 45 এর leftChild এর memory location ও 44 দিয়ে। 45 এর leftChild এ এসে দেখা গেল ৫ ও ৭ নাম্বার লাইনের কন্ডিশন মিথ্যা। কারণ value এর মান currentNode-&gt;number এর চেয়ে ছোটও না বড়ও না। তার মানে সমান! আমরা যেই নােডটাকে খুঁজছি সেটাকে পাওয়া গেছে। তখন ৯ নাম্বার লাইনের ELSE block কাজ করবে। যেহেতু 44 একটা leaf অর্থাৎ এর কোনাে বাচ্চাকাচ্চ নাই তাই ১২ নাম্বার লাইনের condition true হবে। তখন স্বাভাবিক ভাবেই currentNode = NULL করে দেয়ার মাধ্যমে এই নােডটাকে ভ্যানিশ করে দেয়া হল।',),
                  kDescriptionGap,
                  Description(description: 'ওয়েট! কাজ এখনাে শেষ হয় নাই। যেহেতু রিকার্সিভ কল করা হয়েছে আরাে কয়েক জন বসে আছে। ফাংশনের রিটার্ন ভ্যালুর জন্য। 44 এর নোডকে NULL করার পর ৩৩ নাম্বার লাইনের মাধ্যমে 45 এর কাছে ফাংশনের রিটার্ন টাইপ হিসাবে নোডের অ্যাড্রেস NULL রিটার্ন করবে। এই NULL value বসে যাবে 45 এর leftChild এ। কেননা আগে ৬ নাম্বার লাইনে currentNode-&gt;leftChild = deleteNode(root-&gt;leftChild, value); কল হয়েছিল। তাই NULL ভ্যালুটা currentNode-> leftChild এ assign হবে।',),
                  kDescriptionGap,
                  Description(description: '২৮ নাওম্বার লাইনে currentNode->rightChild = deleteNode(currentNode-&gt;rightChild, %3D tempNode-&gt;number); কল করা হয়েছিল। 45 এর অ্যাড্রেস বসে যাবে 44 এর rightChild pointer variable এ। 45 এর নতুন হওয়া parent 44 তার নিজের মেমরি লােকেশন রিটার্ন করবে 44 এর parent 40 এর কাছে। 40 তার নিজের লােকেশন রিটার্ন করবে 47 এর কাছে। 47 হচ্ছে এই ট্রির রুট। 47 তার নিজের লােকেশন রিটার্ন করবে main function এর কাছে। কারণ main function থেকে root = deleteNode(root, 43); কল করা হয়েছিল।',),
                  kDescriptionGap,
                  Description(description: 'এই ছিল বিএসটি এর ডিলেট অপারেশন। কোডগুলো অবশ্যই নিজে টাইপ করে রান করবে। তা না হলে কনসেপ্ট ক্লিয়ার হবে না।',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>

typedef struct bst
{
    int number;
    struct bst *leftChild;
    struct bst *rightChild;

} node;

node *root = NULL;


void insertNode(int value);
void preOrderPrint(node *root);
node * findMinimum(node *root);
node * deleteNode(node *root, int value);

int main()
{
    //Create a BST using: 47 40 54 38 43 49 39 45 44 30 41 70 46 59
    insertNode(47);    insertNode(40);    insertNode(54);
    insertNode(38);    insertNode(43);    insertNode(49);
    insertNode(39);    insertNode(45);    insertNode(44);
    insertNode(30);    insertNode(41);    insertNode(70);
    insertNode(46);    insertNode(59);

    printf("\nPre-Order Tree printing:\n");
    preOrderPrint(root);
    puts("");

    //Delete 43 from created BST
    root = deleteNode(root, 43);

    printf("\nPre-Order Tree printing after deletion:\n");
    preOrderPrint(root);
    puts("");

    return 0;
}


node * deleteNode(node *currentNode, int value)
{
    if(currentNode==NULL) // empty tree
              return NULL;
    else if(value < currentNode->number) // value is less than node's number. so go to left subtree
              currentNode->leftChild = deleteNode(currentNode->leftChild, value);
    else if(value > currentNode->number) // value is greater than node's number. so go to right subtree
              currentNode->rightChild = deleteNode(currentNode->rightChild, value);
    else // node found. Let's delete it!
    {
              //node has no child
              if(currentNode->leftChild == NULL && currentNode->rightChild == NULL)
              {
                  currentNode = NULL;
              }
              else if(currentNode->leftChild == NULL) // node has only right child
              {
                  currentNode = currentNode->rightChild;
              }
              else if(currentNode->rightChild == NULL) // node has only left child
              {
                  currentNode = currentNode->leftChild;
              }
              else // node has two children
              {
                  node *tempNode = findMinimum(currentNode->rightChild);
                  currentNode->number = tempNode->number;
                  currentNode->rightChild = deleteNode(currentNode->rightChild, tempNode->number);
              }

    }

    return currentNode;
}

node * findMinimum(node *currentNode)
{
    if(currentNode->leftChild==NULL)
              return currentNode;

    return findMinimum(currentNode->leftChild);
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


void preOrderPrint(node *root)
{
    if(root==NULL)
              return;

    printf("%d ", root->number);

    preOrderPrint(root->leftChild);
    preOrderPrint(root->rightChild);
}


                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
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
