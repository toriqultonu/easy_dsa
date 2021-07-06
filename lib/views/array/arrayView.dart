import 'dart:async';

import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/views/array/arrayTraversing.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/navigation_drawer.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';

import 'package:flutter/material.dart';

class Array extends StatefulWidget {
  static String id = 'array';

  @override
  _ArrayState createState() => _ArrayState();
}

class _ArrayState extends State<Array> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'অ্যাারে',
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
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/array/array1.gif',),
                  kTitleGap,
                  DataTitle(title: 'Array:',),
                  kDescriptionGap,
                  Description(description: 'তােমাকে বলা হল ৩ জন ছাত্রের বয়স ইনপুট নিয়ে তাদের গড় বের করতে। তুমি age0, age1, age2 নামের তিনটি int type এর ভ্যারিয়েবল ডিক্লেয়ার করলে। এরপর তাতে ইনপুট নিলে নিচের মত করেঃ এই সিরিজের প্রথম পােস্ট থেকে ইতমধ্যেই তােমরা জেনে গেছ ডেটা স্ট্রাকচার বলতে আসলে কী বুঝায়। আর ডেটা স্ট্রাকচার আমাদের কেনই বা শিখতে হবে? তােমাকে বলা হল ৩ জন ছাত্রের বয়স ইনপুট নিয়ে তাদের গড় বের করতে। তুমি age0, age1, age2 নামের তিনটি int type এর ভ্যারিয়েবল ডিক্লেয়ার করলে। এরপর তাতে ইনপুট নিলে নিচের মত করেঃ'),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
  scanf(“%d”, &age0);
scanf(“%d”, &age1);
scanf(“%d”, &age2);
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'এরপর এদেরকে যোগ করে ৩ দিয়ে ভাগ করে গড় বের করলে। এ পর্যন্ত করাতে কোন সমস্যা নাই।',),
                  kDescriptionGap,
                  Description(description: 'সমস্যা শুরু হবে যদি বলি কোন ক্লাসের সবার বয়স ইনপুট নিয়ে স্টোর কর। তাদের বয়সের গড় প্রিন্ট কর। তখন ১০০ জন ছাত্রের জন্য age0, age1, age2,..., age99 পর্যন্ত এত্তগুলা variable declare করে এরপর তাতে ইনপুট নিয়ে যােগ করে গড় বের করা কিন্তু কোন সহজ কাজ নয়।',),
                  kDescriptionGap,
                  Description(description: 'চিন্তা করাে, যদি এমন একটা সিসটেম করা যেত যে একটা ভ্যারিয়েবলের নাম রাখব ধরাে age. এই age এর সাথে ছাত্রদের রােল নম্বর দিয়ে যার যার বয়স ইনপুট দিয়ে রাখ। অর্থাৎ প্রথমে যেই কাজটা করতে চাচ্ছিলাম সেটাই করব তবে অটোামেটিক ভাবে। age0, age1, age2... আলাদা আলাদা ভাবে ডিক্লেয়ার করে আলাদা আলাদা লাইনে ইনপুট নিতে হবে না। এই সিসটেমটার নামই হচ্ছে অ্যারে (Array).',),
                  kTitleGap,
                  DataTitle(title: 'Array: A Linear Data Structure',),
                  kTitleGap,
                  Description(description: 'দুই ধরণের ডেটা স্ট্রাকচার রয়েছে। একটা হচ্ছে Linear Data Structure, আরেকটি হচ্ছে। Nonlinear Data Structure.',),
                  kDescriptionGap,
                  Description(description: 'লিনিয়ার ডেটা স্ট্রাকচার হচ্ছে এমন এক ধরণের স্ট্রাকচার যা মেমরিতে sequence অনুযায়ী স্টোর হয়। এই স্ট্রাকচারের ডেটাগুলাে একটার পর একটা সিরিয়াল্যি সাজানাে থাকে। এই লিনিয়ার ডেটা স্ট্রাকচারের দুই ধরনের representation রয়েছে। একটা হচ্ছে Array. সোেজা সাপটা ভাবে একই ডেটা টাইপের (int, float, double, char ) ডেটাগুলো লাইন ধরে সাজানো থাকে অ্যারের মধ্যে। আরেকটা রিপ্রেজেন্টেশন হচ্ছে, লিস্টের element-গুলোর মধ্যকার সম্পর্ক। এর উদাহরন হচ্ছে। Linked List.',),
                  kDescriptionGap,
                  Description(description: 'নন লিনিয়ার ডেটা স্ট্রাকচারের উদাহরণ হিসেবে উল্লেখ করা যায় Tree স্ট্রাকচারের কথা। Tree-তে অ্যারের মত সিরিয়াল্যি ডেটা সাজানাে থাকে না বা সম্ভবও না। কারণ এখানে root, শাখা-প্রশাখা ইত্যাদির হিসাব-নিকাশ রয়েছে।',),
                  kDescriptionGap,
                  Description(description: 'অ্যারেকে এক কথায় সংজ্ঞায়িত করতে চাইলে এভাবে বলা যায়, নির্দিষ্ট সংখ্যক ডেটা স্টোর করার জন্য একটা স্ট্রাকচার যেখানে শুধুমাত্র এক ধরণের ডেটাই সংরক্ষণ করা যায়। অর্থাৎ অ্যারের একটা নির্দিষ্ট সাইজ থাকবে। এই সাইজের চেয়ে বেশি ডেটা কোন অ্যারে স্টোর করতে পারবে না। আর একই ধরণের ডেটাই স্টোর করতে হবে। int type ডেটা স্টোর করতে চাইলে সেই অ্যারেতে শুধুমাত্র int type এর ডেটাই স্টোর করা যাবে। সেখানে int, float, double, char ইত্যাদি মিক্স করে স্টোর করা যাবে না। যদি int type একটা ১০০ সাইজের অ্যারে ডিক্লেয়ার করি তাহলে এই অ্যারেতে সর্বোচ্চ ১০০ টা int-ই স্টোর করা যাবে।',),
                  kDescriptionGap,
                  Description(description: 'যে কোন ডেটা স্ট্রাকচারেই data insert, traverse, update, delete, searching, sorting 43 মত ব্যাসিক কিছু কাজ থাকে। এই পোস্ট অ্যারের Declaration, Insertion, Traverse এই অপারেশনগুলো দেখানোর চেষ্টা করা হবে।',),
                  kTitleGap,
                  DataTitle(title: 'Array Declaration',),
                  kTitleGap,
                  Description(description: 'প্রােগ্রামিং ল্যাঙ্গুয়েজ ভেদে অ্যারের ডিক্লেয়ারেশন একটু এদিক সেদিক হয়ে থাকে। এক্ষেত্রে সি প্রােগ্রামিং ল্যাঙ্গুয়েজে অ্যারের সকল অপারেশনগুলো দেখাবো। সি এর কোড বুঝলে যে কোন ল্যাঙ্গুয়েজেই অ্যারে ইমপ্লিমেন্ট করা যাবে।',),
                  kDescriptionGap,
                  Description(description: 'সর্বোচ্চ ১০০ জন ছাত্রের বয়স যদি আমাদের স্টোর করে প্রসেস করার দরকার হয় সেক্ষেত্রে আমরা অ্যারেটা ডিক্লেয়ার করতে পারি নিচের মত করেঃ',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 100,
                    child: DartCodeViewer(r'''
  .
int age[100];
.
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'int হচ্ছে ডেটা টাইপ। ধরে নিলাম বয়স হিসেবে শুধু পূর্ণ সংখ্যাই ইনপুট দেয়া হবে। তাই এখানে int টাইপের অ্যারে নিয়েছি। যদি ভগ্নাংশ নিয়ে কাজ করার দরকার হয় সেক্ষেত্রে float বা double ডেটা টাইপের অ্যারে ডিক্লেয়ার করতে হবে। এই অ্যারেতে সর্বোচ্চ ১০০ টি পূর্ণ সংখ্যা স্টোর করা যাবে।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/array/array2.PNG',),
                  kTitleGap,
                  DataTitle(title: 'Array Initialization (insert)',),
                  kTitleGap,
                  Description(description: 'প্রথমত দেখি যদি কিছু ফিক্সড ভ্যালু অ্যারেতে স্টোর করতে চাই তাহলে কিভাবে করা যায়।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
  age[0] = 45;
age[1] = 17;
.
.
.
                          ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'উপরে দেখা যাচ্ছে age নামক অ্যারের প্রথম ইন্ডেক্সে একটা ভ্যালু (45) assign করা হয়েছে। সি age[0] অ্যারেটির প্রথম ইন্ডেক্স। সব ল্যাঙ্গুয়েজেই অ্যারের ইন্ডেক্সিং শুরু হয় শূণ্য থেকে। ল্যাঙ্গুয়েজে অ্যারের প্রতিটা ইন্ডেক্স অ্যাক্সেস করতে হয় অ্যারের নাম দিয়ে এরপর 3rd bracket এর ভিতরে ইন্ডেক্সের নাম্বার লিখে। age অ্যারের সর্বশেষ ইন্ডেক্স হচ্ছে ৯৯। সর্বশেষ ইন্ডেক্স বা অ্যারের সর্বশেষ খােপে যদি কোন মান অ্যাসাইন করতে চাই তাহলে লিখতে হবে এভাবেঃ age[99] = 65;',),
                  kDescriptionGap,
                  Description(description: 'একটা বিষয় লক্ষ্যনীয়, অ্যারের ইন্ডেক্স নাম্বার আর অ্যারের ইন্ডেক্সের ভ্যালু কিন্তু ভিন্ন জিনিস। age[1] = 17; বলতে বুঝায় age নামক অ্যারেতে যতগুলো ইন্ডেক্স বা খোেপ আছে তাদের মধ্য থেকে ১ নাম্বার খােপে ১৭ মানটা বসিয়ে দাও। ১ হচ্ছে খােপের নাম্বার। এই নাম্বারিং এর মাধ্যমেই কিন্তু আমরা লিনিয়ার অ্যারে ইমপ্লিমেন্ট করতে পারছি। ০, ১, ২, ৩, ... এভাবে এই খোপের সংখ্যাগুলো বাড়ছে। আর ১৭ হচ্ছে ছাত্রের বয়স। যেটা অরিজিনাল ডেটা বা ভ্যালু। এক কথায় বললে ১৭ ভ্যালুটাকে age অ্যারের 1 নাম্বার ইন্ডেক্সে বসানাের জন্য age[1] = 17; লিখতে হবে। আশা করি ইন্ডেক্স নাম্বার আর ইন্ডেক্স ভ্যালু গুলিয়ে ফেলবে না আর।',),
                  kDescriptionGap,
                  Description(description: 'এখন দেখব সি ল্যাঙ্গুয়েজ দিয়ে একটা অ্যারেতে কিভাবে ইনপুট নিতে হয়। অ্যারে নিয়ে কাজ করতে গেলে Loop এর পরিষ্কার ধারণা থাকতে হবে। যদি লুপের মধ্যে ঝামেলা থাকে তাহলে উচিত হবে লুপটা একটু রিভাইস দিয়ে এসে বাকি লেখাটা পড়া।',),
                  kDescriptionGap,
                  Description(description: 'তােমরা চাইলে ম্যারাথন স্টাইলে ইনপুট নিতে পারাে কোন রকমের লুপের ইউজ ছাড়াই।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
scanf(“%d”, &age[0]);
scanf(“%d”, &age[1]);
scanf(“%d”, &age[2]);
.
.
.                   ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'কিন্তু উপরের সিসটেমে কেউ অ্যারেতে ইনপুট করে না। লুপের মাধ্যমেই ইনপুট করতে হয়। আমরা নিচে নির্দিষ্ট সংখ্যক ছাত্রের বয়স ইনপুট দেয়ার জন্য কোড লিখব। number_of_student একটি int type variable. এতে ইনপুট নেয়া হচ্ছে কতজন ছাত্রের বয়স ইনপুট নেয়া হবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
scanf(“%d” &number_of_student);

for(i = 0; i<number_of_student; i++)
{
    scanf(“%d”, &age[i]);
}   
                   ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'উপরের কোডে লুপের ভিতর ইনপুট নেয়ার কাজ চলতে থাকবে। একদম শুরুতে অ্যারের প্রথম ইন্ডেক্স 0-তে ইনপুট হবে।এরপর 1, 2, ... (number_of_student-1) পর্যন্ত সবগুলো ইন্ডেক্সে ইনপুট হবে।',),
                  kDescriptionGap,
                  Description(description: 'সব সময় যে সিরিয়ালি্যি সবগুলা ইন্ডেক্সেই মান ইনপুট নিতে হবে এমন না। তুমি চাইলে এক ঘর বাদ দিয়ে দিয়েও ইনপুট নিতে পারাে। যেমনঃ age[0], age[2], age[4]... এগুলোতে ইনপুট নিবে, কিন্তু বাকিগুলােতে নিবে না। এখানে তােমাকে ইনপুট নেয়া শেখানো হল। পরবর্তীতে কখন কিভাবে কী কাজে লাগাতে হবে সেটা তুমি সিদ্ধান্ত নিবা।',),
                  kTitleGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Array Traversing', ID: 'arraytraversing',),
                  kDescriptionGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'More Array Operations', ID: 'updatearray',),
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
