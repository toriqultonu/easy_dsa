import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class ApplicationOfTree extends StatelessWidget {
  static String id = 'applicationoftree';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Application Of ',
          str2: 'Tree',
        ),
        centerTitle: true,
        elevation: 0.0,
        // actions: [
        //   Opacity(
        //     opacity: 0.0,
        //     child: Container(
        //       padding: EdgeInsets.symmetric(horizontal: 16),
        //       child: Icon(Icons.add),
        //     ),
        //   )
        // ],
      ),
      body: Container(
        color: kSecondaryThemeColor,
        child: ListView(
          children: [
            kTitleGap,
            DataTitle(title: 'Some applications of Tree',),
            kTitleGap,
            Description(description: 'শুধু natural hierarchical data স্টোর করার জন্যেই ট্রি ব্যবহার করা হয় না। আমাদের প্রতিদিন ব্যবহার করা অসংখ্য সফটওয়্যারে এই ডেটা স্ট্রাকচার ব্যবহার করা হয়। তবে হায়ারারকিক্যাল ডেটার উদাহরণ সবচেয়ে কমন ও সহজে বােধগম্য।',),
            kDescriptionGap,
            Description(description: 'Natural Hierarchical data বলতে বুঝায় এমন কিছু ডেটা যেগুলা স্বাভাবিক ভাবেই parent- child relationship অনুযায়ী সাজানাে থাকবে। যেমন ধরাে তােমার বংশ পরম্পরা বা পূর্ব-পুরুষদের নামের তালিকা যদি করতে চাও। বা সেই তালিকায় খুব দ্রুত সার্চ, ইনসার্ট, আপডেটের মত কাজগুলাে করতে চাও তাহলে ডেটাগুলাে প্রসেস করার সবচেয়ে ভাল উপায় হচ্ছে ট্র ডেটা স্ট্রাকচারে ফেলা। ধরাে তােমার ৫ পুরুষ আগের থেকে হিসাব শুরু করতে চাও। তাহলে তােমার আগের ৫ম পুরুষকে রুট ধরতে পার। তার ধরাে ৭ ছেলেমেয়ে ছিল। তাদেরকে রুটের চাইল্ড বানায় দাও। এরপর পরের প্রজন্ম, তার পরের প্রজন্ম এমন করতে করতে তােমার পর্যন্ত আসবে। যদি তােমার এখন পর্যন্ত ছেলেপুলে না থেকে থাকে তাহলে তুমি হবে এই ট্রি এর একটা leaf. তােমার ছেলেপুলে হবার পর তুমি তােমার বাবার চাইল্ড ঠিকই থাকবা, আবার তােমার চাইল্ডের প্যারেন্টও হবা।',),
            kDescriptionGap,
            Description(description: 'একই ভাবে কোনা প্রতিষ্ঠানের CEO, CTO, MD, Manager, worker ইত্যাদি ম্যান পাওয়ারদেরকে tree structure এ সাজানাে যায়।',),
            kDescriptionGap,
            Description(description: 'ট্রি এর অন্যান্য কমন ও গুরুত্বপূর্ণ অ্যাপ্লিকেশনগুলো নিচে আলােচনা করা হল।',),
            Description(description: 'Folders in Operating System: উইন্ডোজ বা লিনাক্স, উভয় ক্ষেত্রেই ফোল্ডারগুলো সাজানো থাকে ট্রি স্ট্রাকচারে। তুমি হয়ত বাচ্চা কালে পিসি স্লো হয়ে গেলে কমান্ড লাইনে tree কমান্ড দিতা। ঘ্যাচ্চর ঘ্যাচ্চর করে ৩-৪ বার এই কমান্ড দিলে পিসি ফাস্ট হয়, এই মহান তথ্য কারাে না কারাে থেকে অবশ্যই শুনে থাকবার কথা। আসলে এই কমান্ড দিলে পিসি ফাস্ট হবার কোনাে কারণ নাই। এই কমান্ডের কাজ হচ্ছে তােমার পিসির সব ড্রাইভ, ফোল্ডার ইত্যাদি যেই ট্রি স্ট্রাকচারে সাজানাে আছে সেটা command prompt এ শা করা।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree08.png',),
            kDescriptionGap,
            ImageViewData(imageLink: 'Images/tree/tree09.png',),
            kTitleGap,
            Description(description: 'পিসি ফাস্ট করার আরেকটা মহান ট্রিক্স হল বার বার Refresh করা! বাচ্চা কাল থেকে দেখে আসতেছি এই রিফ্রেশ আর ট্রির কারিশমা! তুমি তো এখন জানোই রিফ্রেশ করার ব্যাপারটাও বােগাস! রিফ্রেশ করলে পিসি &#34;ফ্রেশ&#34; হয় না বরং তুমি যেই ভিউটা দেখতে পাচ্ছ সেটা রিসেট হয়। এগুলার সাথে পিসি ফাস্ট হবার কোনা সম্পর্ক নাই। ISP এর লোকেরা বাসায় আসলে অভ্যাস বশত বার বার রিফ্রেশ করতে গিয়ে রিফ্রেশ অপশন আর খুঁজে পায় না। লিনাক্স রিফ্রেশ অপশন পাইবে কৈ?',),
            kTitleGap,
            Description(description: 'HTML Document Object Model (DOM): তুমি যদি একদম ব্যাসিক HTML সম্পর্কে জেনে থাকো তাহলে খুব সহজেই নিচের চিত্র দেখে ব্যাপারটা বুঝে যাবা। যত ওয়েব পেজ আছে সবগুলার ডেটাগুলাে এরকম একটা ট্রি এর মাধ্যমেই মেমরি স্টোর করা হয়।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree10.png',),
            kTitleGap,
            Description(description: 'Network Routing: তােমার যদি নেটওয়ার্কিং এর ব্যাপারে আগ্রহ থাকে বা ঘাটাঘাটি করে থাকো তাহলে জানার কথা যে ডেটা যখন একটা মেশিন থেকে অন্য মেশিনে যায় তখন মাঝে অনেকগুলো রাউটারের মধ্যে দিয়ে যায়। তােমার পিসি থেকে আমার ব্লগে হিট করেছ। আমার ব্লগ ধরাে হােস্ট করা আছে আমেরিকার কোনাে সার্ভারে। এখান থেকে সার্ভার পর্যন্ত ডেটাগুলো যাওয়ার সময় মাঝে অনেকগুলাে রাউটার পরে। কোন রাউটারের পর কোন রাউটারের কাছে ডেটা নিয়ে যেতে হবে সেই পথ বাতলে দেয়ার জন্য আছে Network Routing Algorithm. এখানেও রয়েছে ট্রি ডেটা স্ট্রাকচারের কাজ।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree11.png',),
            kTitleGap,
            Description(description: 'Syntax Tree in Compiler: কম্পাইলার যখন আমাদের প্রােগ্রামকে কম্পাইল করে তখন প্রতিটা expression কে syntax tree ফরমেটে কনভার্ট করে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree12.png',),
            kTitleGap,
            Description(description: 'Auto Correcter and Spell Checker: অটো কারেকশনের কাজটা কিন্তু একদম ইন্সট্যান্ট হয়। এজন্য ডেটাগুলাে বা শব্দগুলাে এমন ফরমেটে থাকা জরুরি যেখান থেকে খুব দ্রুত সার্চ করা যায় বা ভুল ও শুদ্ধ বানানের মাঝের পার্থক্যটা দ্রুত ধরে ফেলা যায়। তাই শব্দগুলোকে ট্রিতে সাজিয়ে রাখা হয়।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree13.png',),
            kTitleGap,
            Description(description: 'Next Move in Al based Games: যেসব কম্পিউটার গেমগুলো কম্পিউটারের সাথে খেলা যায় সেখানে কম-বেশি আর্টিফিশিয়াল ইন্টেলিজেন্স এর কাজ থাকে। ধরাে দাবার ক্ষেষত্রেই। কম্পিউটার ট্রিতে স্টোর করে রাখে পরের চালগুলাে কী কী হতে পারে। সেখান থেকে অ্যানালাইসিস করে বেস্ট চালগুলাে সে দিয়ে থাকে।',),
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree14.png',),
            kTitleGap,
            DataTitle(title: 'Classification of Tree Data Structure',),
            kDescriptionGap,
            Description(description: 'এই সিরিজে আপাতত প্রায় সব আলােচনা হবে বিভিন্ন ধরনের বাইনারি ট্রি নিয়ে। তাই এগুলোর জন্য ২-১ লাইনের ব্যাখ্যা দেয়ার চেষ্টা করব। বাকিগুলোর জাস্ট নাম উল্লেখ করা হবে।',),
            kDescriptionGap,
            DataTitle(title: 'Binary Tree',),
            kDescriptionGap,
            Description(description: 'যেই ট্রি এর নােডগুলােতে সর্বোচ্চ দুইটি child থাকতে পারে তাকে বাইনারি ট্রি বলা হয়। নােডগুলােতে লিংকড লিস্টের মত এক বা একাধিক ডেটা স্টোর করার ফিল্ড/ভেরিয়েবল থাকতে পারে। আর থাকবে এই নােডের Left Child ও Right Child এর মেমরি অ্যাড্রেস। যার মাধ্যমে এদেরকে অ্যাক্সেস করা যায়।',),
            kDescriptionGap,
            Description(description: 'Perfect Binary Tree: যেই বাইনারি ট্র এর প্রত্যেকটি interior node এ দুটি child থাকে এবং সকল leaf এর depth ও level একই হবে।',),
            kDescriptionGap,
            Description(description: 'Full Binary Tree: এমন একটা বাইনারি ট্রি যার নোডগুলোতে ০ অথবা ২ টি child থাকতে পারে। অর্থাৎ কোনো নােডে একটা child থাকলে সেটা full binary tree হবে না। একে proper binary tree, strictly binary tree বা plane binary tree ও বলা হয়।',),
            kDescriptionGap,
            Description(description: 'Complete Binary Tree: যে বাইনারি ট্রি এর শেষ লেভেল বাদে বাকি সব লেভেল সম্পূর্ণ ভাবে child দ্বারা পূর্ণ। অর্থাৎ সবগুলো নোডেই দুটি করে child আছে। এবং শেষের লেভেলের ক্ষেত্রে নােডগুলাে fill up হতে হবে একদম বাম পাশ থেকে। বামের দিকের কোনাে একটা নােডের জায়গা ফাঁকা রেখে ডান দিকে নােড যুক্ত করলে তাকে complete binary tree বলা যাবে না।',),
            kTitleGap,
            DataTitle(title: 'Binary Search Tree',),
            kDescriptionGap,
            Description(description: 'Binary Search Tree এক ধরনের বাইনারি ট্রি। এই ট্রির বিশেষ একটা বৈশিষ্ট্য রয়েছে। যে কোনাে নােডের left child এর মান হবে নােডটির মানের চেয়ে ছােট অথবা সমান আর right child এর মান হবে নােডের চেয়ে বড়।',),
            kDescriptionGap,
            kTitleGap,
            ImageViewData(imageLink: 'Images/tree/tree15.png',),
            kTitleGap,
            Description(description: 'চিত্র দেখলেই ব্যাপারটা ক্লিয়ার হয়ে যাবে। রুট নােডের কথাই ধরাে। এর বামের সবগুলাে মান রুটের মানের চেয়ে ছােট। ডানের সবগুলাে নােডের মান রুটের চেয়ে বড়। একই ভাবে অন্যান্য যে কোনাে parent node এর ক্ষেত্রেও এই শর্ত প্রযােজ্য।',),
            kDescriptionGap,
            Description(description: 'আরাে কয়েক ধরনের ট্রি আছে। যথাঃ',),
            Description(description: '* AVL Tree',),
            Description(description: '* Red Black Tree',),
            Description(description: '* Splay Tree',),
            Description(description: '* Trie',),
            Description(description: '* Huffman Tree',),
            Description(description: '* N-ary Tree',),
            Description(description: '* Suffix Tree',),
            kHeaderGap,
            kHeaderGap,
            kHeaderGap,
            kHeaderGap,

            kHeaderGap,
          ],
        ),
      ),
    );
  }
}
