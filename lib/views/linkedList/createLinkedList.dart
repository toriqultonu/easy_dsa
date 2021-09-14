import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class CreateLinkedList extends StatelessWidget {
  static String id = 'createlinkedlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Create ',
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
                  DataTitle(
                    title: 'Create a Linked List',
                  ),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 100,
                    child: DartCodeViewer(
                      r'''
void create(node *myList)
{
    printf("Input a number. (Enter -99999 at end)\n");

    scanf("%d", &myList->number);

    if(myList->number==-99999)
              myList->next = NULL;
    else
    {
              myList->next = (node *) malloc(sizeof(node));
              create(myList->next);
    }
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  kTitleGap,
                  Description(
                    description:
                        'এই ফাংশনের প্যারামিটার হিসেবে পাঠানো হয়েছে একটা memory address. আর অ্যাড্রেসটা হচ্ছে। node টাইপের একটা স্ট্রাকচারের। লিংকড লিস্টের ক্ষেত্রে প্রায় সব কাজই কিন্তু মেমরি অ্যাড্রেস নিয়ে করতে হবে। কোনাে আইটেম add করা, delete করা ইত্যাদি অপারেশনগুলো করার উপায় এই মেমরি অ্যাড্রেস ধরে ধরে।',
                  ),
                  kDescriptionGap,
                  Description(
                    description:
                        'create() একটি রিকার্সিভ ফাংশন। এর base case হচ্ছে -99999 ইনপুট হওয়া। অর্থাৎ কখনো যদি -99999 ইনপুট করা হয় তাহলে ধরে নেয়া হবে লিস্টটা আর বড় হবে না। -99999 এর আগের সংখ্যাটিই লিস্টের সর্বশেষ আইটেম। base case সত্যি হলে current node এর pointer ভেরিয়েবল next = NULL করে দেয়া হবে। এতে বুঝা যাবে এর পরে আর কোন আইটেম নাই, এটিই সর্বশেষ আইটেম।',
                  ),
                  kTitleGap,
                  ImageViewData(
                    imageLink: 'Images/linkedlist/linkedlist3.gif',
                  ),
                  kTitleGap,
                  Description(
                    description:
                        'যদি base case সত্য না হয়, তাহলে myList->next = (node *) malloc(sizeof(node)); এর মাধ্যমে নতুন একটা node এর জন্য মেমরি দখল করা হলাে। এরপর সেই মেমরি অ্যাড্রেসটা দিয়ে আবার create(myList->next); কল করা হলোে। যতক্ষণ -99999 ইনপুট না হবে ততক্ষণ এই রিকার্সিভ কল চলতেই থাকবে। এরই মাধ্যমে আমাদের লিস্ট তৈরির কাজ শেষ হলো।',
                  ),
                  kTitleGap,
                  DataTitle(
                    title: 'Print the linked list',
                  ),
                  kDescriptionGap,
                  Description(
                    description:
                        'পুরাে লিস্টটা প্রিন্ট করতে চাইলে main function থেকে print function কল করতে হবে। প্যারামিটার হিসাবে থাকবে লিস্টের শুরুর node বা head.',
                  ),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(
                      r'''
void print(node *myList)
{
    printf("%d ", myList->number);

    if(myList->next == NULL)
              return;

    print(myList->next);
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  kTitleGap,
                  Description(
                    description:
                        'এটাও একটা recursive function. ফাংশন বডিতে ঢুকেই current node এর number-টা print করে দিবে। পরের নােডের অ্যাড্রেস রাখা আছে next নামক pointer variable এ। যদি এতে NULL পাওয়া যায় তার মানে হচ্ছে print করার মত এর পরে আর কোনাো নােড নাই। তাই return করার মাধ্যমে ফাংশনের কাজ শেষ করা হচ্ছে। অন্যথায় পরের নোডের অ্যাড্রেস দিয়ে আবারাে print() কল হচ্ছে। এভাবে পুরাে লিস্টটি প্রিন্ট করা হচ্ছে।',
                  ),
                  kTitleGap,
                  DataTitle(
                    title: 'Size of linked list',
                  ),
                  kDescriptionGap,
                  Description(
                    description:
                        'লিস্টে কতগুলাে আইটেম আছে সেটা জানার জন্য এই ফাংশনটা কল করা যায়ঃ',
                  ),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(
                      r'''
int countListItem(node *myList)
{
    if(myList->next == NULL)
              return 0;

    return (1 + countListItem(myList->next));
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  kTitleGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Insert, Delete & Search Operation', ID: 'singlylinkedlist',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(
                      r'''
#include<stdio.h>
#include<stdlib.h>
#define NULL 0

struct linked_list
{
    int number;
    struct linked_list *next;
};

typedef struct linked_list node;

void create(node *myList);
void print(node *myList);
int countListItem(node *myList);

int main()
{
    node *head;
    head = (node *) malloc(sizeof(node));

    create(head);

    printf("\n");
    print(head);
    printf("\n");

    printf("\nNumber of items = %d \n", countListItem(head));

    return 0;
}

void create(node *myList)
{
    printf("Input a number. (Enter -99999 at end)\n");

    scanf("%d", &myList->number);

    if(myList->number==-99999)
              myList->next = NULL;
    else
    {
              myList->next = (node *) malloc(sizeof(node));
              create(myList->next);
    }
}

void print(node *myList)
{
    printf("%d ", myList->number);

    if(myList->next == NULL)
              return;

    print(myList->next);
}

int countListItem(node *myList)
{
    if(myList->next == NULL)
              return 0;

    return (1 + countListItem(myList->next));
}
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),
                    ),
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
