import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/navigation_drawer.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class Queue extends StatefulWidget {
  static String id = 'queue';

  @override
  _QueueState createState() => _QueueState();
}

class _QueueState extends State<Queue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Queue',
          str2: '',
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
            kTitleGap,
            DataTitle(title: 'কিউ ডেটা স্ট্রাকচার',),
            kTitleGap,
            Description(description: 'বল্টু সিএসইতে পড়ে। তাো সেদিন সে ব্যাংকে গেল সেমিস্টার ফী জমা দিতে। আগে ভার্সিটির পেমেন্ট নেয়ার জন্য ব্যাংকে একটা নির্দিষ্ট কাউন্টার থাকত। তো গতদিন গিয়ে দেখলাম কলেজের জন্য নির্দিষ্ট কোন কাউন্টার নাই। গেট দিয়ে ঢুকেই একটা টোকেন প্রন্ট করার মেশিন দেখা গেল। টাচ স্ক্রিনে টোকেন প্রিন্ট করার বাটনে ক্লিক করলে ফ্যাঁচ ফ্যাঁচ শব্দ করে একটা টোকেন প্রিন্ট হয়ে বের হয়।',),
            kDescriptionGap,
            Description(description: 'তাতে একটা সিরিয়াল নাম্বার লেখা। বল্টুর সিরিয়াল পাওয়া গেল 420!',),
            kDescriptionGap,
            Description(description: 'বল্টু চিন্তায় পড়ে গেল। দেখতে পেল ব্যাংকের ৫ টা কাউন্টারের মাথার উপরে LED screen এ কয়েকটা নাম্বার জ্বলছে। একটায় ৪০২, আরেকটায় ৪০৫ এরকম বাকিগুলোতেত কয়েকটা সিরিয়াল নাম্বার। এটা দিয়ে বুঝাচ্ছে ঐ কাউন্টার ঐ সিরিয়াল নাম্বারের কাস্টমারকে সার্ভিস দিচ্ছে। বল্টু ঠিক বুঝতে পারছিল না এই কাউন্টারগুলো থেকে সিরিয়াল মেইনটেইন করে কিভাবে একজনের পর একজন ডাকা হয়। কাউন্টারের লােকটা কি নিজেই এই সিরিয়াল নাম্বার সিলেক্ট করে কাউকে ডাকে? নাকি অটোমেটেড?',),
            kDescriptionGap,
            Description(description: 'এসব আকাশ-বাতাস ভাবতে ভাবতে সে গাল চুলকাচ্ছে। তখন পাশ থেকে একজনকে ফোনে বলতে শুনলাে &#34;আমার আসতে দেরি হবে। কিউতে (Queue মানে লাইন) অনেক মানুষ!&#34; এটা শুনে বল্টুর মাথায় বিদ্যুৎ খেলে গেল! আরে! ভার্সিটির ছোট বেলায় ডেটা স্ট্রাকচারের একটা টপিক ছিল Queue! একটা কিউ এর মধ্যে কাস্টমারদের সিরিয়াল নাম্বারগুলো রাখলেই তো অটোমেটিক্যাল্য সব কাউন্টার থেকে একজনের পর একজনকে ডাকা যায়! বল্টুও যেহেতু কিউ বুঝে তাই তুমিও বুঝতে পারবা। এইটা রকেট সায়েন্স না! চলাে সামনে আগাই...',),
            kDescriptionGap,
            Description(description: 'মনে করাে ব্যাংকের কাস্টমারদের সিরিয়াল নাম্বারগুলার একটা লিস্ট তােমার কাছে আছে। লিস্ট না বলে এটাকে queue বলি। কিউটা হচ্ছে ৪০১, ৪০২, ৪০৩, ... ৪১৯। বল্টু ঢােকার পরে সিরিয়াল নাম্বার প্রিন্ট হল ৪২০। এই নাম্বারটা কিউয়ের কোথায় রাখবা? ৪০১ এর আগে নাকি ৪১৯ এর পরে? নিশ্চয়ই তুমি ৪১৯ এর পরে রাখবা। এটা হচ্ছে কিউ এর back side. তার কারণ কী? কারণ হচ্ছে, যখন সিরিয়াল্যি একজনের পর একজনকে সার্ভিস দেয়ার ব্যাপার থাকে তখন &#34;আগে আসলে আগে পাবেন ভিত্তিতে সার্ভিস দেয়া হয়। অর্থাৎ যে প্রথমে আসবে সে প্রথমে সার্ভিস নিয়ে চলে যাবে। ইংরেজিতে একে বলা হয় &#34;First In First Out (FIFO)&#34;. বল্টুর পর আরো কোন কাস্টমার আসলে queue-তে তাদের পজিশন হবে কিউ এর back এ, মানে বল্টুর পরে। এটা গেল লিস্টে ডেটা add করার কনসেপ্ট। কিউয়ের ব্যাকে যখন কোন ডেটা add করা হয় তখন তাকে অ্যাড না বলে বলা হয়। enqueue (Stack এর push এর মত)। এটা কিউ ডেটা স্ট্রাকচারের একটা পরিভাষা।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/queue/queue1.png',),
            kTitleGap,
            Description(description: 'ব্যাংকে পাঁচটা কাউন্টার আছে a, b, c, d, e. এদের মধ্য থেকে c কাউন্টার ফাঁকা হল। সে তখন কী করবে? আমাদের কিউতে যেই লােক একদম শুরুতে (front) আছে তাকে ডাকবে। একটা কিউয়ের একদম শুরুতে যেই ডেটা থাকে তাকে বলা হয় front. স্বাভাবিক ভাবেই শেষের জনকে বলা হয়। back/rear. তাে ফ্রন্ট থেকে কোন একজন কাস্টমারকে সার্ভিস দেয়ার জন্য ডাকলে এই ডাকার প্রসেসটাকে বলা হয় dequeue. কিউয়ের বৈশিষ্ট্য হচ্ছে dequeue করে front এর ডেটাকে প্রসেস করে তাকে কিউ থেকে বের করে দিবে (Stack এর pop এর মত)। b কাউন্টার খালি হলে সে আবার কিউয়ের front-কে ডাকবে (dequeue)। তাকে সার্ভিস দিয়ে বের করে দিবে। Queue এর দুইটা অপারেশন উল্লেখ করা যেতে পারে। Dequeue এর মধ্যে ফ্রন্ট ডেটাকে অ্যাক্সেস করা ও সেটাকে রিমুভ করা, উভয় অপারেশনই হ্যান্ডেল করা হচ্ছে। তুমি চাইলে কোডে ৩টা ফাংশন রাখতে পারোে ৩ টা কাজের জন্য।',),
            kDescriptionGap,
            Description(description: '1. Enqueue - কিউয়ের back এ কোন data অ্যাড করা',),
            Description(description: '2. Dequeue - কিউয়ের front এর data-কে প্রসেস করে কিউ থেকে বের করে দেয়া',),
            kTitleGap,
            DataTitle(title: 'Enqueue/Push Operation of Queue Data Structure',),
            kTitleGap,
            Description(description: 'C++ এর STL ব্যবহার করে সহজেই কিউয়ের অপারেশনগুলো করা যায়। স্ট্যাকের মত কিউয়ের হেডার ফাইল অ্যাড করে কাজ করতে হবে',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
#include<queue>
using namespace std;

int main(){

    queue<int> myQueue;

    myQueue.push(419);
    myQueue.push(420);

}

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'যদি সি ল্যাঙ্গুয়েজ ব্যবহার করে করতে চাই তাহলে এই কাজের জন্য একটা ফাংশন লিখে ফেলিঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
#define queueSize 100

int myQueue[queueSize], front = 0, rear = -1, dataCounter = 0; //Global data

void enqueue(int value)
{
    if(rear==queueSize)
        printf("Queue is Full. Cannot push any data");
    else
    {
        myQueue[++rear] = value;
        dataCounter++;
    }
}

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'অ্যারে দিয়ে কিউ ইমপ্লিমেন্ট করার সময় দুইটা data pointer রাখা হয়। front ভেরিয়েবল দিয়ে কিউয়ের ফ্রন্ট ভ্যালুকে অ্যাক্সেস করা হয়। আর rear ভেরিয়েবল দিয়ে কিউয়ের back বা শেষের ভেরিয়েবলের পজিশন ম্যানেজ করা হয়। স্ট্যাকের ক্ষেত্রে দুইটা ভেরিয়েবল দরকার হয় নাই। কারণ একই পথে স্ট্যাকের ডেটা ঢুকতাে ও বের হতো। তাই সেখানে শুধু top নামের একটা ভেরিয়েবল দিয়েই কাজ সেরে ফেলা গেছে। কিন্তু কিউয়ের পথ কিন্তু দুইটা। ডেটা insert হয় কিউয়ের ব্যাক সাইড দিয়ে, আর ডেটা প্রসেসিং/রিমুভ হয় সামনের দিক দিয়ে।',),
            kDescriptionGap,
            Description(description: 'ফাংশনের ভিতরে প্রথমেই চেক করা হয়েছে rear বা শেষের ভ্যালুকে এক্সেস করার পয়েন্টারের মান কিউয়ের সাইজের সমান হয়ে গিয়েছে কিনা। যদি সমান হয়ে যায় তার মানে হচ্ছে কিউতে আর কোন জায়গা নাই। Overflow হয়ে গিয়েছে। কিন্তু যদি কিউতে ফাঁকা জায়গা থাকে তাহলে ++rear করে value-টা কিউতে ঢুকিয়ে দেয়া হচ্ছে। rear এর মান গ্লোবাল্যি -1 দেয়া হয়েছিল। অ্যারেতে -1 নামের কোন ইন্ডেক্স নাই, ইন্ডেক্স শুরু হয় ০ থেকে। তাই preincrement operator (++rear) ব্যবহার করা হয়েছে। একই সাথে dataCounter এর মানও ১ বাড়িয়ে দেয়া হয়েছে। এটা দিয়ে আমরা হিসাব রাখব এই কিউতে কতগুলাে ডেটা আছে।',),
            kTitleGap,
            DataTitle(title: 'Dequeue/Pop Operation of Queue Data Structure',),
            kTitleGap,
            Description(description: ' Dequeue এর কাজ আগেই বলা হয়ে গেছে। কিউয়ের front ডেটাকে প্রসেসিং/রিমুভ করার অপারেশন এটা। সি++ এর কোড হতে পারে এরকমঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
 if(myQueue.empty() != true)
{
    int frontValue = myQueue.front(); //return front value
    myQueue.pop(); //remove front value from Queue

}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'উপরের কোডটা সি দিয়ে করা যায় এভাবেঃ উপরের কোডটা সি দিয়ে করা যায় এভাবেঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
void dequeue()
{
    if(front==queueSize)
         printf("Queue is Empty!");
    else
    {
         printf("%d\n", myQueue[front++];
         dataCounter--;
    }

}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'প্রথমে চেক করা হয়েছে কিউটা খালি কিনা। খালি হলে তো আর কোন ডেটাকে প্রসেস করা বা সেটাকে রিমুভ করা যাবে না। যদি খালি না হয়ে থাকে তাহলে mySqueue এর front-তম ইন্ডেক্সের মানটা প্রিন্ট করা হয়েছে। এরপর front এর মান বাড়িয়ে দেয়া হয়েছে। পরে আবারো dequeue() কল করা হলে অ্যারের পরের ইন্ডেক্সের মান প্রিন্ট করা হবে। অ্যারেতে ভ্যালু থেকেই যাচ্ছে, কিন্তু front ভেরিয়েবলের মাধ্যমে কিউয়ের শুরুর পয়েন্টটা আমরা কন্ট্রোল করছি। front++ করার মানেই আমরা ধরে নিচ্ছি ফ্রন্টের ভ্যালুটা কিউ থেকে বের করে দেয়া হয়েছে। আর যেহেতু একটা ডেটা কমে গেল তাই dataCounter এর মানও এক কমিয়ে দেয়া হয়েছে।'),
            kTitleGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'More on Dequeue', ID: 'dequeue',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 500,
              child: DartCodeViewer(r'''
#include<stdio.h>
#define queueSize 100

int myQueue[queueSize], front = 0, rear = -1;


void enqueue(int value)
{
    if(rear==queueSize)
        printf("Queue is full! Cannot insert any Data!\n");
    else
        myQueue[++rear] = value;
}

void dequeue()
{
    if(front==queueSize)
        printf("Queue is empty!\n");
    else
        printf("Dequeued value: %d\n", myQueue[front++]);
}

void display()
{
    int i;

    for(i = front; i<=rear; i++)
        printf("%d\n", myQueue[i]);
}

int main()
{
    for(int i = 10; i<=100; i=i+10)
    {
        enqueue(i); //push 10 elements in queue
    }

    //Display the queue
    printf("Full Queue is:\n");
    display();
    puts("");

    dequeue();
    dequeue();

    //Display the updated queue
    printf("\nUpdated Queue is:\n");
    display();
    puts("");

    //Enqueue another value
    enqueue(999);

    //Display the updated queue
    printf("\nUpdated Queue is:\n");
    display();
    puts("");

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
