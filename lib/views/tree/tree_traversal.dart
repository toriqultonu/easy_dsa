import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class TreeTraversal extends StatelessWidget {
  static String id = 'treetraversal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
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
            kHeaderGap,
            DataTitle(title: 'Binary Search Tree Traversal',),
            kTitleGap,
            Description(description: 'কোনাে ডেটা স্ট্রাকচার ব্যবহারের সময় ডেটাগুলোতে traverse করার দরকার হয়। ট্রাভার্সের অর্থ এক্ষেত্রে সবগুলাে ডেটাতে access করা। যেমন অ্যারে বা লিংকড লিস্ট শেখার সময় আমরা স্টোর করা ডেটাগুলাে প্রিন্ট করা শিখেছি। শুধু প্রিন্ট নয়, যে কোনো ডেটা সার্চ করা বা নির্দিষ্ট ডেটা আপডেট করার জন্যও সবগুলাে ডেটাতে ভ্রমণ করে (traverse) দেখা দরকার হতে পারে। অথবা নিছক এটা দেখার জন্যও সব ডেটাতে ট্রাভার্স করা লাগতে পারে যে, ডেটাগুলো আমার স্ট্রাকচারে ইনসার্ট করেছি সেগুলাে আদৌ ঠিকঠাক মত ইনসার্ট হয়েছে কিনা।',),
            kDescriptionGap,
            Description(description: 'অ্যারে, স্ট্যাক, কিউ বা লিংকড লিস্ট হচ্ছে লিনিয়ার ডেটা স্ট্রাকচার। কিন্তু ট্রি নন-লিনিয়ার ডেটা স্ট্রাকচার। Linear Data Structure এর ক্ষেত্রে পুরাে স্ট্রাকচারে traverse করা একদম সােজা কাজ। যেহেতু ডেটাগুলাে সিরিয়াল্যি থাকে তাই একটার পর একটা ডেটাগুলোতে অ্যাক্সেস করা যায়। অ্যাক্সেসের ধরণও একই হয়। Singly Linked List এর ক্ষেত্রে ধরাে, পুরােটা লিংকড লিস্ট প্রিন্ট করতে চাইলে কিন্তু এক ভাবেই প্রিন্ট করা সম্ভব। বা যে কোনো valid code এর জন্য আউটপুট একই আসবে।',),
            kDescriptionGap,
            Description(description: 'ট্রি ট্রাভার্সের সাথে লিনিয়ার ডেটা স্ট্রাকচারের ট্রাভার্সের পার্থক্যটা এখানেই। আগের পোেস্ট থেকে দেখেছাে যে ট্রির প্রতি নােডে এক বা একাধিক ডেটা থাকে। আর left child ও right child এর মেমরি অ্যাড্রেস থাকে। যদি তােমাকে ট্রি প্রিন্ট করতে বলি তাহলে তুমি কিভাবে প্রিন্ট করব? রুট থেকে লুপ চালিয়ে প্রতিটা নােডে যাবা আর ডেটাগুলো প্রিন্ট করবা, সিম্পল তাই না? একটু চিন্তা করাে! কোনো একটা নােডে গিয়ে আগে এই নােডের ডেটা প্রিন্ট করবা নাকি তার বাচ্চাকাচ্চাদের ডেটা প্রিন্ট করবা? তুমি হয়ত আগে নােডের ডেটা প্রিন্ট করবা, এরপর বামের চাইল্ডের ডেটা এরপর ডানের চাইল্ডের ডেটা। আরেক জন দেখা যাবে প্রিন্ট করছে, আগে নোডের বাচ্চাকাচ্চাদের ডেটা। এরপর নোডের নিজের ডেটা। উভয় ক্ষেত্রেই কিন্তু ট্রি এর ডেটাই প্রিন্ট হচ্ছে। শুধু ডেটাগুলো আগে-পিছে প্রিন্ট হচ্ছে। এই ভিন্নতাগুলো সবগুলােই valid. এই আগে পরে প্রিন্টের ব্যাপারটা নিয়েই এখন কথা বলব। DFS -Depth Search Algorithm এর সাহায্যে একটা বাইনারি ট্রি ট্রাভার্স করার তিনটি পদ্ধতি রয়েছে। সেগুলো হচ্ছেঃ',),
            kDescriptionGap,
            Description(description: '• Pre-order traversal',),
            Description(description: '• In-order traversal',),
            Description(description: '• Post-order traversal',),
            kDescriptionGap,
            Description(description: 'DFS এর মাধ্যমে ট্রি ট্রাভার্সের একটা মূলনীতি আছে। তা হচ্ছে কোনো একটা নোডের siblings এ সার্চ করার আগে ঐ নােডের মাধ্যমে ট্রি এর যতটা deep এ যাওয়া যায় ততটা deep এ যেতে হবে। ধরাে রুটের চাইল্ড হচ্ছে A, B. A এর চাইল্ড হচ্ছে C, D. C এর চাইল্ড E, F. এখানে A, B কিন্তু siblings (আপন মায়ের পেটের ভাইবােন)। তুমি যখন A নোডে এসে একটা ডেটা খুঁজে পেলে না, তখন B নােডে গিয়ে খুঁজতে পারবা না। A এর বাচ্চাকাচ্চার মধ্যে খুঁজতে হবে। A থেকে গেলে C তে। C তে খুঁজে না পেলে C এর চাইল্ড D এর কাছে গিয়ে খুঁজতে হবে। এভাবে ট্রি এর গভীর থেকে গভীরে নেমে যেতে হবে। যখন একটা NULL node পাওয়া যাবে তখন বাকি থাকা siblings এর মধ্যে একে একে খুঁজতে হবে। মূলনীতির কনসেপ্ট এটাই।',),
            kTitleGap,
            DataTitle(title: 'General recursive pattern for traversing a binary tree',),
            kDescriptionGap,
            Description(description: 'একটা non-empty বাইনারি ট্রি এর যে কোনাে নােড N হলে তাতে নিচের তিনটা ঘটনা ঘটতে পারেঃ',),
            kDescriptionGap,
            Description(description: '(L) - recursively এই N নোডের left subtree তে ট্রাভার্স করবা। Left subtree ট্রাভার্স করা হয়ে গেলে তুমি আবার N এর কাছেই ফিরে আসবা',),
            kDescriptionGap,
            Description(description: '(R) - recursively এই N নােডের right subtree তে ট্রাভার্স করবা। Right subtree ট্রাভার্স করা হয়ে গেলে তুমি আবার N এর কাছেই ফিরে আসবা',),
            kDescriptionGap,
            Description(description: '(N) - নােড N-কে প্রসেস করবা।',),
            kDescriptionGap,
            Description(description: 'L-R-N এর কোনটার কাজ আগে করবা কোনটাকে পরে করবা সেই ক্রমই হচ্ছে pre-order, in- order আর post-order. একটা ট্রি প্রিন্ট করার উদাহরণ দিয়ে এই ব্যাপারগুলাে ব্যাখ্যা করা হচ্ছে।',),
            kDescriptionGap,
            Description(description: 'ধরাে একটা BST-তে এই ডেটাগুলাে যথাক্রমে ইনসার্ট করা হবে। 45 হচ্ছে এই ট্রি এর root. BST আঁকা যায় এভাবেঃ 45, 54, 40, 49, 38, 70, 30, 39, 41, 45, 44',),
            kDescriptionGap,
            ImageViewData(imageLink: 'Images/tree/tree16.png',),
            kTitleGap,
            DataTitle(title: 'Pre-order Traversal',),
            kDescriptionGap,
            Description(description: 'উপরের তিনটা প্রসেসের ক্রম হবে এক্ষেত্রে N-L-R. অর্থাৎ, N নােডটি NULL না হলে শুরুতেই তাকে প্রসেস করা হবে বা নােডের ডেটাকে প্রিন্ট করে দেয়া হবে। এরপর recursively left subtree এবং right subtree. যদি N নোডটি NULL হয় তাহলে ফাংশন return করবে। কারণ NULL হওয়ার মানে এই নোডটি ট্রিতে exist করে না।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree17.png',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
void preOrderPrint(node *rootNode)
{
    if(rootNode==NULL)
        return;

    printf("%d ", rootNode->number);

    preOrderPrint(rootNode->leftChild);
    preOrderPrint(rootNode->rightChild);
}
                    ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'কোডে দেখাে, প্রথমেই নােডের ডেটা প্রিন্ট করে দেয়া হয়েছে। এরপর রিকার্সিভ কল হয়েছে। যেই ট্রি এর ছবি দেয়া হয়েছে এটার জন্য pre-order traversal এ আউটপুট আসবে এটাঃ 45 40 38 30 39 41 45 44 54 49 7O',),
            kTitleGap,
            DataTitle(title: 'In-order Traversal ',),
            kTitleGap,
            Description(description: 'এক্ষেত্রে কাজের ক্রম হবে L-N-R.',),
            Description(description: 'প্রথমে N নােডের left subtree তে recursively ট্রাভার্স করবে এরপর নােড N-কে প্রসেস করা হবে অর্থাৎ N এর ডেটাকে প্রিন্ট করা হবে। অতঃপর right subtree তে ট্রাভার্স করবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
void inOrderPrint(node *rootNode)
{
    if(rootNode==NULL)
        return;

    inOrderPrint(rootNode->leftChild);

    printf("%d ", rootNode->number);

    inOrderPrint(rootNode->rightChild);
}
                    ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kDescriptionGap,
            Description(description: 'উপরের ট্রির আউটপুটঃ 30 38 39 40 41 44 45 45 49 54 70',),
            kTitleGap,
            DataTitle(title: 'Post-order Traversal',),
            kDescriptionGap,
            Description(description: 'postOrderTraverse(node *N) নামের যদি কোনো ফাংশন থাকে তাহলে তাকে N নোডের left child দিয়ে recursive call করার মাধ্যমে left subtree-তে ট্রাভার্স করবে। এরপর একই ফাংশনকে আবার রিকার্সন কল করা হবে N এর right child দিয়ে। তাহলে right subtree এর সবগুলো নোড ট্রাভার্স করা হবে (নােডগুলাের ডেটা প্রন্ট করবে)। এরপর গিয়ে N এর ডেটা প্রিন্ট করা হবে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree18.png',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
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
            kDescriptionGap,
            Description(description: 'উপরের ট্রির আউটপুটঃ 30 39 38 44 45 41 40 49 70 54 45',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 700,
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
            kHeaderGap,
          ],
        ),
      ),
    );
  }
}
