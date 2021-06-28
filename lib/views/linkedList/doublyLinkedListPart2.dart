import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class DoublyLinkedList2 extends StatelessWidget {
  static String id = 'doublylinkedlist2';

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
            DataTitle(title: 'Delete an item from Doubly Linked List',),
            kDescriptionGap,
            Description(description: 'ডাবলি লিংকড লিস্ট থেকে কোনাে একটা আইটেম ডিলেট করার কাজটা খুবই সােজা সাপ্টা। আইটেম ইনসার্ট করার জন্য আগের পর্বে তিনটা আলাদা ফাংশন নিয়ে কাজ করেছিলাম। একটা ছিল লিস্টের front এ আইটেম এড করার জন্য। একটা ছিল tail এ আইটেম এড করার জন্য। আরেকটা ছিল লিস্টের মাঝে কোনাে একটা আইটেম এড করার ফাংশন।',),
            kDescriptionGap,
            Description(description: 'ডিলেট করার ক্ষেত্রে একটু ভিন্ন ভাবে করছি। একটা ফাংশনই এখানে কাজ করবে। ফাংশনের আর্গুমেন্ট হিসাবে caller function থেকে position পাঠানোে হবে। অর্থাৎ যেই পজিশনের আইটেমটা ডিলেট করতে চাই সেই পজিশন নাম্বারটা (1 based) পাঠালে ডিলেটের কাজ সম্পন্ন হবে। আমরা যদি পজিশন হিসাবে পাঠাই ১, তাহলে head node টা ডিলেট করবে। যদি লিস্টে ১০ টা নােড থাকে আর এই ফাংশনে ১০ পাঠাই তাহলে tail node-টাকে ডিলেট করবে। মাঝামাঝি কোনাে পজিশন পাঠালে সেটাকে ডিলেট করবে। তুমি প্র্যাকটিস হিসাবে আগের পোস্টের insertion operation-গুলো আলাদা আলাদা ফাংশন লিখে না করে একটা ফাংশন দিয়েও করতে পারাে।',),
            kDescriptionGap,
            kDescriptionGap,
            Description(description: 'পজিশন অনুযায়ী কোনাে একটা নােডকে ডিলেট করার জন্য deleteNode(int position) নামের একটা ফাংশন লিখব। Function body-তে নিচের স্টেপগুলো ফলো করবঃ',),
            kDescriptionGap,
            Description(description: '* চেক করব NULL কিনা। যদি NULL হয় তার মানে লিস্টটা empty. সেক্ষেত্রে চেক করব head ফাংশনটা return করে দিব।',),
            kDescriptionGap,
            Description(description: '* লিস্টটা empty না হলে চেক করব position 1 কিনা। যদি 1 হয় এর মানে লিস্টেরhead node কে ডিলেট করতে হবে। সে জন্য head node এর মানকে আপডেট করতে হবে। ধরাে একটা লিস্ট আছে 10, 20, 30, 40 এই নাম্বারগুলোর। হেড নোড হচ্ছে 10. একে আমরা ডিলেট করতে চাই। 10 নােডের previous node কিন্তু NULL. কারণ 10 তার পূর্বের কোনো নােডকে পয়েন্ট করা অবস্থায় নাই। 10 এর next node হচ্ছে 20. আমরা 10 কে ডিলেট করলে head নামক আমাদের যেই global pointer type variable আছে সেটাকে 20 এর address দিয়ে আপডেট করতে হবে। কারণ 20 ই আমাদের লিস্টের নতুন হেড।',),
            kDescriptionGap,
            Description(description: '* হেড নােড ডিলেট করার সময় ২ টা ঘটনা ঘটতে পারে। প্রথমতঃ হতে পারে লিস্টে একটাই মাত্র নােড ছিল, সেটা হচ্ছে হেড। আমরা এটাকেই ডিলেট করেছি। দ্বিতীয়তঃ লিস্টে হেড ছাড়াও আরোে এক বা একাধিক নােড ছিল। যদি প্রথম কেসটা ঘটে, অর্থাৎ একটা নোড ছিল হেড সেটাকেই ডিলেট করা হয়েছে তাহলে পুরাে লিস্টটা কিন্তু empty হয়ে যাবে। সেক্ষেত্রে head ও tail উভয়কেই NULL assign করতে হবে। অন্যথায় নতুন হেডের (head-&gt;next) আগের (previous) নােডের রেফারেন্স হিসাবে NULL assign করে দিতে হবে। কারণ হেড নোড তার previous কোনাে নােডকে পয়েন্ট করে না।',),
            kDescriptionGap,
            Description(description: 'উপরের তিনটা পয়েন্টের জন্য কাজ করবে এই code block-টুকুঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
{
... ... ...
if(head==NULL) return;

    if(position==1){ // delete 1st (head) node
        head = head->next;

        if(head->next==NULL) // IF the list contained only one item and that was head. So head->next is NULL
            tail = NULL; // 1st node is deleted so list is empty. head and tail both are NULL
        else
            head->next->previous = NULL;

        return;
    }
... ... ...
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'position যদি 1 না হয় (অর্থাৎ head ছাড়া অন্য কোনো নােডকে ডিলেট করতে চাচ্ছি) তাহলে নিচের স্টেপগুলাে ফলাে করবঃ',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist/linkedlist10.png',),
            kTitleGap,
            Description(description: '* লুপ চালিয়ে desired position এর নােডটাকে খুঁজে বের করতে হবে।',),
            kDescriptionGap,
            Description(description: '* নােডটাকে ডিলেট করার জন্য উপরের ছবির মত কিছু কাজ করতে হবে। ছবিতে current node-টাকে ডিলেট করার জন্য একে তার আগের ও পরের নোডের থেকে সম্পর্ক ছিন্ন করা হয়েছে। current node যদিও প্রথম ও তৃতীয় নােডকে পয়েন্ট করে আছে কিন্তু তাকে কেউ আর পয়েন্ট করে নাই। প্রথম নােডটা তার next node হিসাবে পয়েন্ট করছে তৃতীয় নোেডকে। আর তৃতীয় নােড তার previous node হিসাবে পয়েন্ট করছে প্রথম নােডকে।',),
            kDescriptionGap,
            Description(description: 'এই কাজগুলাে করার জন্য লিখা হচ্ছে নিচের কোডগুলােঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
{
... ... ...
if(i == position){ // desired position found

        // temp node will be deleted

        tempAnother = temp->previous;
        tempAnother->next = temp->next;

        if(temp->next==NULL) // desired node is the last node of list
            tail = tempAnother;
        else
            temp->next->previous = tempAnother; // tempAnother is the previous node of temp->next node

        free(temp);
    }
... ... ...
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'i হচ্ছে loop variable. সেটার মাধ্যমে পজিশন চেক করা হচ্ছে। পজিশন যদি লিস্টে exist করে তাহলে temp নামের নােডটাকে ডিলেট করা হবে। উপরের দুইটা স্টেপ অনুযায়ী, temp-কে ডিলেট করার জন্য এর আগের এবং এর পরের নোড দুটি নিয়ে কাজ করতে হবে। আগের নোডটিকে পয়েন্ট করছে tempAnother নামক নােডটি। যার next node হিসাবে ৮ নাম্বার লাইনে পয়েন্ট করানো হচ্ছে। temp node এর next node-কে। অর্থাৎ এখন temp এর আগের নোডটা আর temp কে পয়েন্ট করে নাই। পয়েন্ট করছে temp এর পরের নােডকে।',),
            kDescriptionGap,
            Description(description: 'এরপর চেক করা হচ্ছে temp নােডের পরে কি আসলেই কোনাে নােড আছে কিনা। যদি কোনাে নােড না থাকে এর মানে হচ্ছে temp এই লিস্টের সর্বশেষ নোড। এই সর্বশেষ নোডকে ডিলেট করে দেয়া হল। কাজ কি শেষ? নাহ! আমরা একটা global pointer variable রেখেছিলাম tail নামে। এই tail কিন্তু এখনাে temp-কে পয়েন্ট করে বসে আছে। তাই যদি temp->next == NULL হয় তাহলে tail এর ভ্যালু আপডেট করে দিতে হবে। tail তাহলে এখন কাকে পয়েন্ট করবে? পয়েন্ট করবে temp এর আগের নােডকে। temp এর আগের নোেড কোনটা? temp এর আগের নোড হচ্ছে tempAnother নােড। তাই কোডের ১১ নাম্বার লাইনে tail = tempAnother; করা হয়েছে। ',),
            kDescriptionGap,
            Description(description: 'আর যদি temp node-টা লিস্টের সর্বশেষ নোড না হয় তাহলে আরেকটু কাজ করতে হবে। কোডের প্রথম অংশে temp এর আগের নােডটা temp এর পরের নোডকে পয়েন্ট করেছিল। এখন temp এর পরের নােডটাও temp এর আগের নােডকে পয়েন্ট করবে। সেটাই করা হচ্ছে ১৩ নাম্বার লাইনে temp->next->previous=tempAnother; করা হয়েছে।',),
            kDescriptionGap,
            Description(description: 'এই কাজগুলাের পর কিন্তু আমাদের temp নোডটা লিস্ট থেকে বিচ্ছিন্ন হয়ে গেল। সে তার আগে পরের দুইটা নােডকে এখনাে পয়েন্ট করে আছে। কিন্তু তাকে কেউ পয়েন্ট করে নাই। লিস্টের শুরু থেকে তুমি এখন লুপ চালিয়ে traverse করলে tempAnother নোডের কাছে আসলে সে তােমাকে পাঠিয়ে দিবে temp এর নেক্সট নােডের কাছে। temp-&gt;next নোডের কাছে এসে ব্যাকে যেতে চাইলে সে তােমাকে পাঠিয়ে দিবে tempAnother এর কাছে। তো বুঝতেই পারছ যে আমাদের নােডটা ডিলেট হয়ে গেছে। কিন্তু আসলেই কি এটা মেমরি থেকে ডিলেট হয়েছে? নাহ!!!! এটা এখনাে মেমরিতে রয়ে গেছে। মেমরি থেকে এটাকে মুছে ফেলার জন্য তাই শেষ লাইনে free(temp); লিখা হয়েছে। এতে করে temp হারিয়ে গেল।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 700,
              child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

struct linked_list
{
    int number;
    struct linked_list *next;
    struct linked_list *previous;
};

typedef struct linked_list node;
node *head=NULL, *tail=NULL;

node* getNewNode(int val);
void insert_at_head(int value);
void insert_at_tail(int value);
void insert_at_middle(int value, int position);
void deleteNode(int position);
void printLinkedListForward();
void printLinkedListBackward();
bool isValueAvailable(int value);


int main()
{
    int a = 5, b = 15, c = 43, d = 23, e = 12, f = 66, g = 99, h =65, i = 20, j = 8;
    int pos = 2, insertMidValue = 500, deletePos = 4;

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

    printf("Delete item of position number %d", deletePos);
    deleteNode(deletePos);

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at front: %d\n", d);
    insert_at_head(d);

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at tail: %d\n", e);
    insert_at_tail(e);

    //print the list forward
    printLinkedListForward();

    printf("Insert nodes at front: %d\n", f);
    insert_at_head(f);

    //print the list forward
    printLinkedListForward();

    printf("Delete first node of list\n");
    deleteNode(1);

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
    
    //Searching the value in the list
    int value = h;
    if(isValueAvailable(value) == true)
        printf("%d found in the list.\n\n", value);
    else
        printf("%d not found in the list.\n\n", value);
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

//Insert a node at front of the list. This node will be the new head
void insert_at_head(int value)
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

// delete any node of list according to position
void deleteNode(int position){

    if(head==NULL) return;

    if(position==1){ // delete 1st (head) node
        head = head->next;

        if(head->next==NULL) // IF the list contained only one item and that was head. So head->next is NULL
            tail = NULL; // 1st node is deleted so list is empty. head and tail both are NULL
        else
            head->next->previous = NULL;

        return;
    }

    node *temp = (node*) malloc(sizeof(node));
    node *tempAnother = (node*) malloc(sizeof(node));
    int i = 1;

    temp = head;

    while((i < position) && temp->next!=NULL){ // find the desired node to delete
        temp = temp->next;
        i++;
    }

    if(i == position){ // desired position found

        // temp node will be deleted

        tempAnother = temp->previous;
        tempAnother->next = temp->next;

        if(temp->next==NULL) // desired node is the last node of list
            tail = tempAnother;
        else
            temp->next->previous = tempAnother; // tempAnother is the previous node of temp->next node

        free(temp);
    }
    else
        printf("Desired position does not exist! Position: %d\n", i);

}

// print the list in forward order
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

// print the list in reverse order
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

//This function search the value in the list
bool isValueAvailable(int value)
{
    node *p = head;
    while(p != NULL)
    {
        if(p->number == value)
        {
            return true;
        }
        else
        {
            p = p->next;
        }
    }
    return 0;
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
