import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class DoublyLinkedList extends StatelessWidget {
  static String id = 'doublylinkedlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Singly Linked List',
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
            DataTitle(title: 'Doubly Linked List',),
            kDescriptionGap,
            Description(description: 'কম্পিউটার সায়েন্সের ভাষায় ডাবলি লিংকড লিস্ট হচ্ছে এক ধরনের linked data structure যেখানে node নামের কিছু রেকর্ড sequentially একটার সাথে আরেকটা connected থাকে। প্রতিটা নোডে এক বা একাধিক data field থাকতে পারে। আর লিস্টের সাথে যুক্ত থাকার জন্য ২ টিlink থাকে, যাদেরকে চিহ্নিত করা যায় next ও previous link নামে। Doubly Linked List এর head node এর previous link হবে NULL. একই ভাবে লিস্টের সর্বশেষ নোডের next link হবে NULL. অর্থাৎ head নােড তার আগের নােড হিসাবে পয়েন্ট করবে NULL-কে। আর tail node (সর্বশেষ নােড) তার পরের নােড হিসাবে পয়েন্ট করবে NULL-কে। এগুলোর মাধ্যমে আমরা লিস্টের শুরু ও শেষ বুঝতে পারব খুব সহজেই।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist/linkedlist6.png',),
            kTitleGap,
            DataTitle(title: 'Operations of Doubly Linked List',),
            kDescriptionGap,
            Description(description: 'Singly Linked List এর মতই Doubly Linked List এর অপারেশনগুলো করা যায়। এই পোস্টে শুধুমাত্র ৪ টি অপারেশন দেখানাে হবে। ',),
            kDescriptionGap,
            Description(description: '• Insert a node at tail',),
            Description(description: '• Insert a node at front',),
            Description(description: '• Traverse doubly linked list forward order',),
            Description(description: '• Traverse doubly linked list reverse order',),
            kTitleGap,
            DataTitle(title: 'Applications of Doubly Linked List',),
            kDescriptionGap,
            Description(description: '* Browser এ BACK বাটন ফিচার ইমপ্লিমেন্ট করার সময় কাজে লাগতে পারে',),
            kDescriptionGap,
            Description(description: '* কোনাে অ্যাপ্লিকেশনে Most Recently Used ফাইলের লিস্ট দেখানার জন্য ব্যবহৃত হতে পারে',),
            kTitleGap,
            DataTitle(title: 'Disadvantage over Singly Linked List',),
            kDescriptionGap,
            Description(description: '* প্রতিটা নােডে previous node এর রেফারেন্স স্টোর করার জন্য এক্সট্রা একটা পয়েন্টার রাখতে হয়। এতে মেমরি বেশি খরচ হয়',),
            kDescriptionGap,
            Description(description: '* Node এর insert, delete এর ক্ষত্রে next ও previous উভয় পয়েন্টারকেই খেয়াল করে আপডেট করতে হয়।',),
            kDescriptionGap,
            kTitleGap,
            DataTitle(title: 'Define a node of Doubly Linked List',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 100,
              child: DartCodeViewer(r'''
struct linked_list
{
    int number;
    struct linked_list *next;
    struct linked_list *previous;
};

typedef struct linked_list node;
node *head=NULL, *tail=NULL;
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
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
              height: 100,
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
              height: 150,
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
            Container(
              margin: kSidePadding,
              height: 200,
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
            DataTitle(title: 'Print Doubly Linked List Forward',),
            kDescriptionGap,
            Description(description: 'Order Loop ঘুরিয়ে পুরাে লিস্ট হেড থেকে print করা শুরু করা হয়েছে। Loop break করছে tail node পাওয়া গেলে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
void printLinkedListForward()
{
    printf("\nYour updated linked list in FORWARD ORDER:\n");

    node *myList;
    myList = head;

    while(1)
    {
        if(head==NULL || tail==NULL) break;

        printf("%d ", myList->number);

        if(myList==tail) break;

        myList = myList->next;
    }
    puts("\n");
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            DataTitle(title: 'Print Doubly Linked List Reverse Order',),
            kDescriptionGap,
            Description(description: 'লিস্টের tail নােড থেকে প্রিন্ট করা শুরু হয়েছে। লিংক করা হচ্ছে previous পয়েন্টারের সাহায্যে। যখন head এর previous pointer এর মান NULL পাওয়া যাবে তখন loop break হবে। আগের ফাংশনের মত এখানেও লুপ ব্রেক করার জন্য if(myList == head) এভাবেও কন্ডিশন চেক করা যায়।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
void printLinkedListBackward()
{
    printf("\nYour full linked list in REVERSE ORDER:\n");

    node *myList;
    myList = tail;

    while(1)
    {
        if(head==NULL || tail==NULL) break;

        printf("%d ", myList->number);

        if(myList->previous==NULL) break;

        myList = myList->previous;
    }
    puts("\n");
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 700,
              child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>

struct linked_list
{
    int number;
    struct linked_list *next;
    struct linked_list *previous;
};

typedef struct linked_list node;
node *head=NULL, *tail=NULL;

node* getNewNode(int val);
void insert_at_tail(int value);
void insert_at_first(int value);
void insert_at_middle(int value, int position);
void printLinkedListForward();
void printLinkedListBackward();

int main()
{
    int a = 5, b = 15, c = 43, d = 23, e = 12, f = 66, g = 99, h =65, i = 20, j = 8;
    int pos = 2, insertMidValue = 500;

    //Create a linked list
    printf("Insert nodes at tail: %d, %d, %d\n", a, b, c);
    insert_at_tail(a);
    insert_at_tail(b);
    insert_at_tail(c);

    //print the list forward
    printLinkedListForward();

    printf("Insert node: %d at middle. Position: %d\n", insertMidValue, pos);
    insert_at_middle(insertMidValue, pos); //here midValue = 500 and pos = 2

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at front: %d\n", d);
    insert_at_first(d);

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at tail: %d\n", e);
    insert_at_tail(e);

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at front: %d\n", f);
    insert_at_first(f);

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at tail: %d, %d, %d, %d\n", g, h, i, j);
    insert_at_tail(g);
    insert_at_tail(h);
    insert_at_tail(i);
    insert_at_tail(j);

    //print the list forward
    printLinkedListForward();

    //print the list backward
    printLinkedListBackward();

    return 0;
}

/*
    User defined functions
*/

//create a new node and returns to caller
node* getNewNode(int val)
{
    node *temp_node;
    temp_node = (node *) malloc(sizeof(node));
    temp_node->number=val;
    temp_node->next=NULL;
    temp_node->previous=NULL;

    return temp_node;
}

//Insert a node after last node
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

//Insert a node at front of the list. This node will be the new head
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

void printLinkedListForward()
{
    printf("\nYour updated linked list in FORWARD ORDER:\n");

    node *myList;
    myList = head;

    while(1)
    {
        if(head==NULL || tail==NULL) break;

        printf("%d ", myList->number);

        if(myList==tail) break;

        myList = myList->next;
    }
    puts("\n");
}

void printLinkedListBackward()
{
    printf("\nYour full linked list in REVERSE ORDER:\n");

    node *myList;
    myList = tail;

    while(1)
    {
        if(head==NULL || tail==NULL) break;

        printf("%d ", myList->number);

        if(myList->previous==NULL) break;

        myList = myList->previous;
    }
    puts("\n");
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
