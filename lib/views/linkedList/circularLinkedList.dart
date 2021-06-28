import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class CircularLinkedList extends StatelessWidget {
  static String id = 'circularlinkedlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Circular Linked List',
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
            Description(description: 'Circular Singly Linked List এর মধ্যে Singly Linked List এর বৈশিষ্ট্য থাকবে, একই সাথে এটি সার্কুলারও হবে। সার্কল তৈরি করার জন্যই শেষ নােডের next node হিসাবে পয়েন্ট করা হবে head node-কে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/linkedlist/linkedlist11.png',),
            kTitleGap,
            DataTitle(title: 'Advantages of Circular Linked List',),
            kDescriptionGap,
            Description(description: '১. লিস্টের যে কোনাে নােডকে starting node ধরে পুরোে লিস্টকে traverse করা যায়। পুরোে লিস্টটা একটা traverse করা তখনই শেষ হবে যখন starting node টা দ্বিতীয় বার visited হবে।',),
            kDescriptionGap,
            Description(description: '২. Circular Linked List দিয়ে Queue ইমপ্লিমেন্ট করা যায়। এতে front, rear দুইটা আলাদা পয়েন্টার রাখার দরকার হয় না। সার্কুলার লিংকড লিস্টের লাস্ট নোডটায় সব সময় ডেটা push হবে। আর pop করতে হবে last node এর পরের নােড থেকে (অর্থাৎ head node থেকে)।',),
            kDescriptionGap,
            Description(description: '৩. ধরাে কতগুলাে কাজের একটা লিস্ট আছে। এই কাজগুলােকে নির্দিষ্ট সময় পরপর রিপিট করা দরকার। এধরনের কেসে সার্কুলার লিংকড লিস্ট ব্যবহার করা যায়।',),
            kDescriptionGap,
            Description(description: 'যেমনঃ Multiplayer game হিসাবে তুমি একটা লুডু গেম বানাতে চাও। সেখানে কিন্তু ২, ৩ বা ৪ জন প্লেয়ার থাকতে পারে। তাদের সবার খেলার দান (turn) কিন্তু রিপিটেডলি চলতেই থাকবে। এটা করতে চাইলে তােমাকে circular singly linked list ব্যবহার করতে হবে।',),
            kDescriptionGap,
            Description(description: 'আরেকটা উদাহরণ দেই। আমাদের কম্পিউটারে অনেকগুলো অ্যাপ্লিকেশন বা সফটওয়্যার এক সাথে রান করতে থাকে। তুমি ব্রাউজারে এই লেখাটি পড়ছাে, ঘড়িটা তােমাকে সময় দেখাচ্ছে, মিডিয়া প্লেয়ারে কোনাে একটা অডিও চলছে। এই সবগুলাে কাজ আমাদের কাছে মনে হচ্ছে এক সাথে হচ্ছে। মনে হচ্ছে। সবগুলাে কাজ পিসির প্রসেসর at a time করে যাচ্ছে। আসলে তা না। প্রসেসর কয়েক মিলি সেকেন্ড বা কয়েক ন্যানাে সেকেন্ড তােমার ব্রাউজারকে প্রসেস করছে, কয়েক ন্যানাে সেকেন্ড ঘড়িকে প্রসেস করছে, কয়েক ন্যানাে সেকেন্ড মিডিয়া প্লেয়ারকে প্রসেস করছে। এরপর আবার ব্রাউজার, আবার ঘড়ি, আবার মিডিয়া প্লেয়ার... এভাবে একটার পর একটা কাজ হচ্ছে। লিস্টের সবগুলাে কাজ এক দফা প্রসেস হলে আবার লিস্টের শুরু থেকে প্রসেস করা হচ্ছে। উপরের ছবির প্রথম নোডটাকে ব্রাউজার, দ্বিতীয় নােডটাকে ঘড়ি আর তৃতীয় নােডটাকে মিডিয়া প্লেয়ার ধরে চিন্তা করাে। দেখাে তারা কিন্তু ঘুরতেই থাকবে। এই ধরনের repeated কাজের লিস্ট থাকলে এসব ক্ষেত্রে Circular Linked List ব্যবহার করা যায়।',),
            kTitleGap,
            DataTitle(title: 'Operations of Circular Linked List',),
            kDescriptionGap,
            Description(description: 'অন্যান্য ডেটা স্ট্রাকচারের মতই সার্কুলার লিংকড লিস্টের কমন কিছু অপারেশন রয়েছে। এই লেখায় নিচের অপারেশনগুলাে নিয়ে আলােচনা করা হবে।',),
            kDescriptionGap,
            Description(description: '1. Insert node at list (Position: head, tail and middle)',),
            Description(description: '2. Delete node from list (Position: head, tail and middle)',),
            Description(description: '3. Traverse the list (Print the full list)',),
            kTitleGap,
            DataTitle(title: 'Insert a node at Circular Linked List',),
            kDescriptionGap,
            Description(description: 'List এর শুরুতে, শেষে ও মাঝের যে কোানো পজিশনে নোড এড করা যায়। কনসেপ্টগুলো প্রায় একই। নিচে তিনটা ভিন্ন ভিন্ন পজিশনের জন্য সাের্স কোড দিয়ে ব্যাখ্যা করা হল।',),
            kDescriptionGap,
            DataTitle(title: 'Insert node at the head',),
            kDescriptionGap,
            Description(description: 'চারটা স্টেপে কাজটা করতে পারি। যথাঃ',),
            kDescriptionGap,
            Description(description: '1. নতুন একটা নােড তৈরি করে সেটার next pointer হিসাবে initially নিজেকেই পয়েন্ট করে রাখা',),
            kDescriptionGap,
            Description(description: '2. নতুন নােডের next pointer এর মান update করা। next pointer হবে head node',),
            kDescriptionGap,
            Description(description: '3. tail node এর next pointer এর মান আপডেট করা। next pointer পয়েন্ট করবে নতুন নােডকে',),
            kDescriptionGap,
            Description(description: '4. head node এর মান আপডেট করা। এটি এখন পয়েন্ট করবে নতুন তৈরি করা নোেডকে',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
void insert_at_head(int number)
{
    node *newNode = (node *) malloc(sizeof(node));
    newNode->number = number;
    newNode->next = newNode;

    if(head==NULL){
        head = newNode;
        tail = newNode;
    }
    else{
        newNode->next = head;
        tail->next = newNode;
        head = newNode;
    }
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'head ও tail দুটি global pointer type variable. উপরের ফাংশনটার মাধ্যমে একটা integer type number আমাদের সার্কুার লিংকড লিস্টের শুরুতে যোগ করতে পারব। যেহেতু নতুন একটা নােড যুক্ত হবে তাই শুরুতেই একটা নতুন নোড বানিয়ে নিলাম। এর pointer of next node হিসাবে তার নিজের memory address-ই assign করা হয়েছে। অর্থাৎ এই মুহূর্তে নতুন নোডটি নিজেই নিজেকে পয়েন্ট করে আছে।',),
            kDescriptionGap,
            Description(description: 'এরপর চেক করা হচ্ছে head-টা NULL কিনা। যদি NULL হয় এর মানে লিস্টটা এখনো empty. তাই এর head ও tail উভয়েই newNode এর রেফারেন্স অ্যাসাইন করা হল। অর্থাৎ লিস্টে একটা নােড আছে। এটাই head, এটাই tail. আর যদি লিস্টটা ফাঁকা না হয় তাহলে নতুন নোডটাকে head এর আগের পজিশনাে বসিয়ে তাকে head বানিয়ে দিতে হবে। এই কাজটা করার জন্য newNode এর next node হিসাবে পয়েন্ট করানাে হচ্ছে head-কে। tail->next কিন্তু এখনো head-ই আছে। তাই পরের লাইনে tail->next হিসাবে পয়েন্ট করা হয়েছে newNode-কে। List এর শুরুর track রাখার জন্য যেই head node রাখা হয়েছে শেষ লাইনে তার মানটা আপডেট করা হলো head = newNode করার মাধ্যমে।',),
            kTitleGap,
            DataTitle(title: 'Insert node at the tail',),
            kDescriptionGap,
            Description(description: 'নিচের স্টেপগুলাে ফলাে করে কোনাে সার্কুলার লিংকড লিস্টের end position এ একটা নোাড যুক্ত করা যায়।',),
            kDescriptionGap,
            Description(description: '1. নতুন একটা নােড বানানাে (newNode)। এর next pointer হিসাবে নিজেকেই পয়েন্ট করা (newNode->next = newNode)',),
            kDescriptionGap,
            Description(description: '2. head নােডের রেফারেন্স দ্বারা।newNode এর next pointer এর মান আপডেট করা (newNode->next = head)',),
            kDescriptionGap,
            Description(description: '3. tail node এর next pointer এর মান newNode এর রেফারেন্স দিয়ে আপডেট করা (tail->next = newNode) ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
void insert_at_tail(int number)
{
    node *newNode = (node *) malloc(sizeof(node));
    newNode->number = number;
    newNode->next = newNode;

    if(head==NULL){
        head = newNode;
        tail = newNode;
    }
    else{
        tail->next = newNode;
        newNode->next = head;
        tail = newNode;
    }
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: '',),
            kTitleGap,
            DataTitle(title: 'Insert node at the middle',),
            kDescriptionGap,
            Description(description: 'head - tail বাদে লিস্টের মাঝামাঝি পর্যায়ের যে কোনাে পজিশনে কোনাে নোড যুক্ত করতে চাইলে নিচের স্টেপগুলাে ফলাে করা যায়। এখানাে নােড এড করা হচ্ছে লিস্টের নোডগুলাের পজিশন নাম্বার অনুসারে। তােমার দরকারের ভিত্তিতে এটা নিজের মত করে কাস্টমাইজড করে নিতে হবে। যেমন তােমার দরকার হতে পারে যেই নােডের ডেটার নাম্বারের ভ্যালু ৫০১ সেই নােডের পরে নতুন একটা নােড যােগ করা। অথবা, অমুক মেমরি লোকেশনে যেই নোডটা আছে তার পরে নতুন একটা নোড যোগ করা, ইত্যাদি। এই উদাহরণে নােডের ক্রম নাম্বার অনুযায়ী নতুন নােড যুক্ত করা হচ্ছে। স্টেপগুলো হচ্ছেঃ',),
            kDescriptionGap,
            Description(description: '1. নতুন একটা নােড তৈরি করা (newNode)',),
            kDescriptionGap,
            Description(description: '2. desired position এর নােড (current node) ও তার আগের নোডটা (temp node) খুঁজে বের করা',),
            kDescriptionGap,
            Description(description: '3. temp node 93 next pointer 9 aha hewNode aa update FsiÌ (temp->next = newNode)',),
            kDescriptionGap,
            Description(description: '4. newNode এর next pointer এর মান current node এর মেমরি অ্যাড্রেস দ্বারা আপডেট করা (newNode->next = current)',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 250,
              child: DartCodeViewer(r'''
void insert_at_middle(int number, int position)
{
    if(position==1){
        insert_at_head(number);
        return;
    }
    else if(position>1 && head!=NULL){
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
                //you can also write: newNode->next = current;
                //Both are same
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
            Description(description: 'উক্ত ফাংশনের শুরুতে চেক করা হয়েছে পজিশন 1 কিনা। যদি পজিশন 1 হয় তাহলে front এ কোনো নােড যুক্ত করার ফাংশনটা কল করে দেয়া হয়েছে। এরপর ভিতরে Loop চালিয়ে কাংখিত পজিশনের নােড (current) ও তার আগের পজিশনের নোড (temp) বের করা হয়েছে। যদি desired position- টি লিস্টের সর্বশেষ নােড হয় তাহলে তাহলে end position এ কোনো নােড যুক্ত করার ফাংশন কল করা হয়েছে। অন্যথায় else{} ব্লকের ভিতরে নতুন নােডটিকে যােগ করা হয়েছে। নতুন নােড যোেগ করার আগে temp এর next pointer পয়েন্ট করে ছিল current নােডকে। আমাদের উদ্দেশ্য হচ্ছে। current নােডের স্থলে newNode কে বসানাে। তাই temp এর next pointer এর মান আপডেট করা হয়েছে newNode এর মেমরি অ্যাড্রেস দিয়ে (temp-&gt;next = current) আর newNode এর next pointer এর মান আপডেট করা হয়েছে current node এর মেমরি অ্যাড্রেস দিয়ে (newNode-&gt;next = current). current এর পরিবর্তে এখানে temp-&gt;next-ও লিখা যায়। কারণ temp-&gt;next আসলে current node এর মেমরি অ্যাড্রেসই hold করে।',),
            kTitleGap,
            DataTitle(title: 'Delete head of a Circular Linked List',),
            kDescriptionGap,
            Description(description: 'লিস্টের head কে ডিলেট করার অর্থ হচ্ছে নতুন head হবে পুরাতন head এর next pointer. অর্থাৎ head = head-&gt;next; আর tail এর next pointer নতুন head দিয়ে আপডেট করতে হবে (tail- &gt;next = head-&gt;next). temp node লিস্টের পুরাতন head-কে পয়েন্ট করে ছিল। যেহেতু এটা ডিলেট করতে হবে তাই মেমরিতে এর অস্তিত্ব রেখে দিয়ে লাভ নাই। তাই নিচের ফাংশনের শেষ লাইনে free(temp) করার মাধ্যমে মেমরিতে দখল করে রাখা স্পেস remove করে দেয়া হল।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 100,
              child: DartCodeViewer(r'''
void delete_head(){
    if(head==NULL)  return;

    node *temp = head;
    tail->next = head->next;
    head = head->next;

    free(temp);
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            DataTitle(title: 'Delete tail of a Circular Linked List',),
            kDescriptionGap,
            Description(description: 'লিস্টের tail node কে ডিলেট করতে হলে tail এর previous node অর্থাৎ যেই নোডটা tail-কে পয়েন্ট করে আছে সেই নােডটিকে খুঁজে বের করতে হবে। নিচের কোডে লুপ ঘুরিয়ে কাজটা করা হয়েছে। current ও temp নামের দুইটা নােড নেয়া হয়েছে। লুপ শেষ হলে current node এ পাওয়া যাবে List এর end node. আর temp node এ পাওয়া যাবে end node এর আগের নোড। আমাদের কাজটা হবে temp node এর next pointer এর মান head node দ্বারা আপডেট করে (73 (temp-&gt;next = head) i T temp node a current node (end node of the list)-কে পয়েন্ট করবে না। পয়েন্ট করবে head node-কে। তাহলে current নোডটা লিস্ট থেকে ছিটকে পড়বে। অতপর tail node কে আপডেট করে দিতে হবে temp নােড দ্বারা। কারণ এটিই এখন সর্বশেষ নােড। সব শেষে যথারীতি current node কে free করে দিতে হবে। যেন র্যামে জায়গা দখল করে না থাকে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
void delete_tail(){
    if(head==NULL)  return;

    node *temp = head;
    node *current = head;
    while(current->next != head){
        temp = current;
        current = current->next;
    }
    // now, `current` node is the TAIL. `temp` is the previous node of TAIL.
    // `current->next` is HEAD

    temp->next = head; //also can write temp->next = current->next;
    tail = temp;
    free(current);
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            DataTitle(title: 'Delete a middle node of a Circular Linked List',),
            kDescriptionGap,
            Description(description: 'Middle position এ insert এর মত একই ভাবে লুপ চালিয়ে desired position খুঁজে বের করতে হবে। যেই নােডটাকে delete করতে হবে নিচের কোড অনুসারে সেটা হচ্ছে current নোড। আর temp হচ্ছে current node এর previous node. ডিলেট করার আগের অবস্থায় temp এর next pointer হচ্ছে current নােড। যেহেতু current কে ডিলেট করতে হবে তাই temp এর next pointer এর মান আপডেট করে দিতে হবে current node এর next pointer এর মাধ্যমে (temp- &gt;next = current-&gt;next). ফলে current node-কে এখন আর কেউ পয়েন্ট করে রইলা না। এটা লিস্টের বাইরে ছিটকে গেল। কিন্তু এখনো র্যামে স্পেস নিয়ে আছে। তাই free(current) করার মাধ্যমে মেমরি থেকেও চিরতরে মুছে ফেলা হল current node এর existence!',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 250,
              child: DartCodeViewer(r'''
void delete_middle(int position){
    if(head==NULL)  return;

    if(position==1){
        delete_head();
        return;
    }

    node *current = head;
    node *temp;
    int count = 0;

    do{
        count++;
        temp = current;
        current = current->next;
    }   while(current->next != head && count<position-1);

    if(count==position-1){
        if(current==tail){
            delete_tail();
            return;
        }

        temp->next = current->next;
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
            Description(description: 'Insert এর মতই চেক করা হচ্ছে head অথবা tail-কে ডিলেট করতে চাচ্ছি কিনা। যদি তাই হয়। সেক্ষেত্রে শুরুতে বানানাে দুইটা ফাংশন কল করে কাজ সারা হয়েছে। কাজ শেষ হবার সাথে সাথেই return কীওয়ার্ড ব্যবহার করে ফাংশনকে ঐখানেই terminated করে দেয়া হয়েছে। Function body র মােট তিন জায়গায় return করা হয়েছে। এর যে কোনো একটায় function terminated না হলে বুঝতে হবে যেই পজিশন ডিলেট করতে চাওয়া হয়েছে সেই পজিশনটা আসলে লিস্টে নাই। তাই G a a Position does not exist A fa S Ra Insert at middle position এর ফাংশনেও একই কাজ করা হয়েছে।',),
            kTitleGap,
            DataTitle(title: 'Print the full Circular Linked List',),
            kDescriptionGap,
            Description(description: 'পুরাে লিস্টটা traverse করার জন্য যে কোনো একটা নােডকে head ধরে সেটা থেকে traverse শুরু করে লিস্টটা ঘুরে ঐ head নােডের আগ পর্যন্ত Loop ঘুরিয়ে traverse করা যায়। আমরা এই পােস্টের ক্ষেত্রে head node কে fixed রেখে কাজ করছি।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 100,
              child: DartCodeViewer(r'''
void print_list(){
    if(head==NULL)  return;

    node *current = head;
    do{
        printf("%d ", current->number);
        current = current->next;
    }   while(current != head);
    puts("\n");
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'উপরের কোডে দেখা যাচ্ছে head থেকে প্রিন্ট শুরু করা হয়েছে। Loop breaking condition এ দেয়া হয়েছে যে, যতক্ষণ পর্যন্ত current node এর মান head না হয় ততক্ষণ লুপ ঘুরে ঘুরে নাডের ডেটা প্রিন্ট করবে। যখন current head হয়ে যাবে তখন বুঝা যাবে যে লিস্টের সবগুলো নােড == একবার করে ভিজিট করে আবার head নাডে ভিজিট করা হয়েছে। তখন লুপ ব্রেক করবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 700,
              child: DartCodeViewer(r'''
#include<stdio.h>
#include<stdlib.h>

struct linked_list{
    int number;
    struct linked_list *next;
};

typedef struct linked_list node;
node *head = NULL, *tail = NULL;

void insert_at_head(int number);
void insert_at_tail(int number);
void insert_at_middle(int number, int position);
void delete_head();
void delete_tail();
void delete_middle(int posision);
void print_list();
int getListLength();

int main()
{
    int a = 5, b = 15, c = 43, d = 23, e = 12, f = 66, g = 99, h =65, i = 20, j = 8;
    int pos = 2, insertMidValue = 500, deletePos = 5;

    printf("Insert at head: %d\n", a);
    insert_at_head(a);

    printf("Updated Full list:\n");
    print_list();

    printf("Insert at tail: %d, %d, %d\n", b, c, d);
    insert_at_tail(b);
    insert_at_tail(c);
    insert_at_tail(d);

    printf("Updated Full list:\n");
    print_list();

    printf("Delete HEAD\n");
    delete_head();

    printf("Updated Full list:\n");
    print_list();

    printf("Insert at head: %d\n", e);
    insert_at_head(e);

    printf("Updated Full list:\n");
    print_list();

    printf("Insert at POSITION: %d, VALUE: %d\n", pos, insertMidValue);
    insert_at_middle(insertMidValue, pos);

    printf("Updated Full list:\n");
    print_list();

    printf("Delete TAIL\n");
    delete_tail();

    printf("Updated Full list:\n");
    print_list();

    printf("Insert at tail: %d, %d, %d\n", f, g, h);
    insert_at_tail(f);
    insert_at_tail(g);
    insert_at_tail(h);

    printf("Updated Full list:\n");
    print_list();

    printf("Delete from POSITION: %d\n", deletePos);
    delete_middle(deletePos);

    printf("Updated Full list:\n");
    print_list();

    return 0;
}

// Insert a node at front of a circular singly linked list
void insert_at_head(int number)
{
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;

    if(head==NULL)
    {
        head = newNode;
        tail = newNode;
    }
    else
    {
        newNode->next = head;
        tail->next = newNode;
        head = newNode;
    }

}

// Insert a node at tail of a circular singly linked list
void insert_at_tail(int number)
{
    node *newNode = (node *) malloc(sizeof(node));

    newNode->number = number;
    newNode->next = newNode;

    if(head==NULL)
    {
        head = newNode;
        tail = newNode;
    }
    else
    {
        tail->next = newNode;
        newNode->next = head;
        tail = newNode;
    }
}

// Insert a node at middle of a circular singly linked list
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
            }
            return;
        }

    }

    printf("Position does not exist!\n");
}

// Delete HEAD node of a circular singly linked list
void delete_head()
{
    if(head==NULL)  return;

    node *temp = head;

    tail->next = head->next;
    head = head->next;

    free(temp);
}

// Delete TAIL node of a circular singly linked list
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
    free(current);
}

// Delete a node middle in the circular singly linked list
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
        free(current);
        return;
    }

    printf("Position (%d) does not exist!\n", position);
}

// Print all node's data of a circular singly linked list
void print_list()
{
    if(head==NULL)  return;

    node *current = head;

    do
    {
        printf("%d ", current->number);
        current = current->next;
    }   while(current != head);

    printf("\nList Length: %d\n", getListLength());
    puts("\n");
}

//Determine the number of nodes in circular singly linked list
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
            kHeaderGap,
          ],
        ),
      ),
    );
  }
}
