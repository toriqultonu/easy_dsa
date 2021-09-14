import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class MaximumMinimum extends StatelessWidget {
  static String id = 'maxmin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Max. Min. of ',
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
                  DataTitle(title: 'BST Find Maximum and minimum value',),
                  kDescriptionGap,
                  Description(description: 'যে কোন স্ট্রাকচার শেখার সময় আরেকটি কমন অপারেশন শেখানো হয়। তা হচ্ছে maximum ও minimum সংখ্যাটাকে খুঁজে বের করা। এটাও যেহেতু একটা সার্চিং অপারেশন তাই একটা Binary Search Tree এর সর্বোচ্চ বা সর্বনিম্ন মানটি search করার complexity হচ্ছে O(log n).',),
                  kDescriptionGap,
                  Description(description: 'BST এর properties হচ্ছে এর যে কোনা নােডের left subtree এর সবগুলো নােড হবে ঐ নােডের চেয়ে ছােট বা সমান এবং right subtree এর নোডগুলো হবে বড়। এই বৈশিষ্ট্য থেকে কিন্তু খুব সহজেই বুঝা যায় একদম ছােট মানটা Tree এর কোন পজিশনে থাকবে। যেহেতু বামের নােডগুলাের মান ছােট তাই রুট থেকে যদি ক্রমাগত প্রতিটা নোডের left child এ যেতে থাকি তাহলে সর্বশেষ নােডটার মানই সবচেয়ে ছােট। আর সর্বোচ্চ মানের জন্য যেতে হবে প্রতিটা নােডের ডান right child এ।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/tree/tree19.png',),
                  kDescriptionGap,
                  Description(description: 'উপরের ছবিতে দেখাে। সবচেয়ে ছােট মানটা (30) আছে left most node এ। আর সর্বোচ্চ মান (70) আছে right most node এ। তাই সর্বনিম্ন মান খুঁজার জন্য আমরা recursively বা লুপ চালিয়ে সর্ববামের node এ চলে যাব। আর বড় মান খুঁজার জন্য যাব সর্বডানের node এ।',),
                  kTitleGap,
                  DataTitle(title: 'Find Maximum value of BST',),
                  kDescriptionGap,
                  Description(description: 'Maximum ও minimum সংখ্যা বের করার জন্য recursive ও iterative দুই ভাবেই কোড করা যায়। উভয় কোডই দেখব। maximum বের করব recursively আর minimum বের করব iteratively.',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
node * findMaxRecursive(node *root)
{
    if(root->rightChild==NULL)
              return root;

    return findMaxRecursive(root->rightChild);
}
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'প্রথমে বেজ কেস চেক করা হচ্ছে। যদি কোনাে নােডে গিয়ে দেখা যায় তার right child নাই তার মানে বুঝতে হবে এটাই এই ট্রি এর সবচেয়ে বড় সংখ্যা। তাই যেই নোডে গিয়ে right child পাওয়া যাচ্ছে না সেই নােডটাকেই main function এর কাছে return করা হচ্ছে। আর যদি rightChild==NULL সত্য না হয়, অর্থাৎ right child থাকে তাহলে ঐ rightChild এর অ্যাড্রেসটা দিয়ে এই ফাংশনকে আবার কল করা হচ্ছে। আশা করি বুঝে গেছ। তুমি এবার উপরের কোডটাকে একটু edit করে সর্বনিম্ন মান বের করার জন্য একটা ফাংশন লিখে ফেল।',),
                  kDescriptionGap,
                  Description(description: 'উল্লেখ্য, এই ফাংশন কিন্তু সর্বনিম্ন মানকে রিটার্ন করছে না। বরং যেই নোডটাতে সর্বনিম্ন মান রয়েছে। সেই নােডের memory address রিটার্ন করছে। main function থেকে এই অ্যাড্রেসের মানটাকে প্রিন্ট করতে হবে। তবে তুমি চাইলে এই ফাংশনের return type পয়েন্টার না দিয়ে int-ও দিতে পারাে। সেক্ষেত্রে এই নােডের মানটাই main function এর কাছে পাঠিয়ে দিবে।',),
                  kTitleGap,
                  DataTitle(title: 'Find Minimum value of BST',),
                  kDescriptionGap,
                  Description(description: 'lterative way -তে একটা BST এর সর্বনিম্ন সংখ্যা বের করতে হবে।',),
                  kTitleGap,

                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
node * findMinIterative(node *root)
{
    if(root==NULL)
              return root;

    while(root->leftChild != NULL)
    {
              root = root->leftChild;
    }

    return root;
}
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'Function parameter হিসেবে root এর মেমরি অ্যাড্রেস পাঠানো হয়েছে। যদি কোনো empty tree এর সর্বনিম্ন সংখ্যা বের করার জন্য এই ফাংশনকে কল করা হয় তখন ফাংশন বডির ভিতরে শুরুর IF blockটা execute হবে। অর্থাৎ আমাদের রুটের মেমরি অ্যাড্রেস যদি NULL হয় তাহলে এই NULL ই রিটার্ন করা হবে। কিন্তু যদি root==NULL মিথ্যা হয় তাহলে ফাংশনের বাকি অংশ কাজ করবে',),
                  kDescriptionGap,
                  Description(description: 'আমাদের উদ্দেশ্য হচ্ছে সর্বনিম্ন সংখ্যা বের করা। ছোট সংখ্যাগুলা যেহেতু ট্রির left subtree তে থাকে। তাই লুপ ঘুরিয়ে বারবার ট্রি এর বাম দিনের নােডগুলােতে traverse করা হচ্ছে। while এর condition হিসাবে দেয়া হয়েছে root-&gt;leftChild != NULL. অর্থাৎ যদি root এর leftChild এর memory address NULL না হয় তাহলে লুপ ঘুরতে থাকবে। লুপের বডিতে বলা হয়েছে root = root-&gt;leftChild; অর্থাৎ root এর যেহেতু leftChild বিদ্যমান তাই root এর মধ্যে assign করা হচ্ছে রুটের left child এর মেমরি লােকেশন। এভাবে একে একে ট্রি এর left most node এ পৌঁছে। যাব। Left most node এ আসার পর while এর কন্ডিশন মিথ্যা হয়ে যাবে। কারণ left most node এর leftChild এ কোনো child node থাকবে না। যেহেতু কোনো leftChild থাকবে না তাই leftChild != NULL এটা মিথ্যা হবে, কেননা leftChild = NULLI Ga loop break P\$G4| এরপর return করবে root এর মেমরি অ্যাড্রেস।',),
                  kDescriptionGap,
                  Description(description: 'মনে করিয়ে দেয়ার জন্য বলি, এই root কিন্তু ট্রি এর সত্যিকারের রুট না। প্রতিবার লুপ ঘুরাতে কিন্তু এই রুটের মান পরিবর্তন হয়েছে। এটা একটা local variable যার lifetime শুধু এই ফাংশনের ভিতরেই থাকবে। রিটার্ন করার পর main function থেকে নোডের অ্যাড্রেসটা receive করে ঐ অ্যাড্রেসের মাধ্যমে নােডের মানটা প্রিন্ট করতে পারো। আশা করি এটা বুঝতেও কোনা সমস্যা নাই। তুমি এখন maximum সংখ্যাটা বের করার জন্যiterative code লিখে ফেল।',),
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

node * insertNodeRecursive(node *root, int value);
void insertNodeIterative(int value);
void preOrderPrint(node *root);
node * findMinRecursive(node *root);
node * findMaxRecursive(node *root);
node * findMinIterative(node *root);
node * findMaxIterative(node *root);

int main()
{
    node *minNode, *maxNode;

    //Insert function in Recursive fashion
    root = insertNodeRecursive(root, 45);
    insertNodeRecursive(root, 54);
    insertNodeRecursive(root, 40);
    insertNodeRecursive(root, 49);
    insertNodeRecursive(root, 38);
    insertNodeRecursive(root, 70);

    //Insert function in Iterative fashion
    insertNodeIterative(30);
    insertNodeIterative(39);
    insertNodeIterative(41);
    insertNodeIterative(45);
    insertNodeIterative(44);

    printf("\nPre-Order Tree printing:\n");
    preOrderPrint(root);
    puts("");

    minNode = findMinIterative(root);
    if(minNode!=NULL)
              printf("\n\nMinimum value is: %d\n", minNode->number);
    else
              printf("\n\nTree is empty!\n");

    maxNode = findMaxRecursive(root);
    if(maxNode!=NULL)
              printf("\n\nMaximum value is: %d\n", maxNode->number);
    else
              printf("\n\nTree is empty!\n");

    return 0;
}


node * findMinRecursive(node *root)
{
    if(root->leftChild==NULL)
              return root;

    return findMinRecursive(root->leftChild);
}

node * findMaxRecursive(node *root)
{
    if(root->rightChild==NULL)
              return root;

    return findMaxRecursive(root->rightChild);
}

node * findMinIterative(node *root)
{
    if(root==NULL)
              return root;

    while(root->leftChild != NULL)
    {
              root = root->leftChild;
    }

    return root;
}

node * findMaxIterative(node *root)
{
    if(root==NULL)
              return root;

    while(root->rightChild != NULL)
    {
              root = root->rightChild;
    }

    return root;
}


node * insertNodeRecursive(node *newNode, int value)
{
    if(newNode==NULL)
    {
              newNode = (node *) malloc(sizeof(node));

              newNode->number = value;
              newNode->leftChild = NULL;
              newNode->rightChild = NULL;

              return newNode;
    }
    else
    {
              if(value <= newNode->number)
                  newNode->leftChild = insertNodeRecursive(newNode->leftChild, value);
              else
                  newNode->rightChild = insertNodeRecursive(newNode->rightChild, value);

              return newNode;
    }

}

void insertNodeIterative(int value)
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
              parentNode->leftChild = NULL;
              parentNode->rightChild = NULL;

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
            //BannerAdsWidgets(),
          ],
        ),
      ),
    );
  }
}
