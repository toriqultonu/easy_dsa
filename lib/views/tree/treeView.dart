import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/navigation_drawer.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class Tree extends StatefulWidget {
  static String id = 'tree';

  @override
  _TreeState createState() => _TreeState();
}

class _TreeState extends State<Tree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'ট্রি',
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
                  DataTitle(title: 'Basic Concept',),
                  Description(description: 'তােমার কম্পিউটারে অসংখ্য ফোল্ডার আছে। ফোল্ডারের ভিতরে ফোল্ডার আছে, তার ভিতরে আরাে ফোল্ডার আছে। এভাবে ফোল্ডারের ভিতরে ঢুকতে থাকতে থাকলে এক পর্যায়ে গিয়ে দেখা যাবে আর ফোল্ডার নাই। হয়ত এক বা একাধিক ফাইল আছে।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/tree/tree01.png',),
                  kTitleGap,
                  Description(description: 'উপরের চিত্রটা দেখ। কী চেনা চেনা লাগে? ধরাে একদম উপরের বক্সটা তােমার পিসির "My Computer". পিসি ওপেন করেই তুমি এই আইকনে ডাবল ক্লিক করাে। এরপর C, D, E ও F নামের চারটা ড্রাইভ দেখতে পাও। একেকটা ড্রাইভের মধ্যে একেক টাইপের ডেটা আছে। যেমন D drive এ দেখা যাচ্ছে চারটা ফোল্ডার। টিউটোরিয়াল নামের ফোল্ডারের ভিতরে তিনটা ফোল্ডার আছে এবং একটা ফাইল আছে। java নামক ফোল্ডারে ডাবল ক্লিক করলে এNिumber of Edges is N-1: কোনো একটা ট্রিতে N সংখ্যক নোড থাকলে তাতে অবশ্যই N-1 সংখ্যক edge থাকবে। যেহেতু কোনাে নাডের একাধিক parent হতে পারে না তাই এই রুলসটা সকল ট্রি এর জন্য সত্য হবে।ই ফোল্ডারটা ওপেন হবে। ভিতরে হয়ত আরাে ফোল্ডার বা ফাইল দেখতে পাওয়া যাবে। কিন্তু Java.pdf নামক যেই ফাইলটা আছে সেটাতে ডাবল ক্লিক করলে কী ঘটবে? এটা যেহেতু ফাইল তাই এটা নির্দিষ্ট অ্যাপ্লিকেশনের মাধ্যমে ওপেন করা যাবে। এটা ওপেন হয়ে কিন্তু আরো কোনা ফোল্ডার/ফাইল পাওয়ার কোনাে সম্ভাবনা নাই। অর্থাৎ ফাইলগুলোকে ধরা যায় একেকটা end point হিসেবে। এর পরে আর যাওয়ার রাস্তা নাই।',),
                  kDescriptionGap,
                  Description(description: 'এতক্ষণ আমরা কথা বললাম My Computer > D Drive > Tutorial এই লােকেশনের ফাইল/ফোল্ডার নিয়ে। একই রকম ভাবে অন্যান্য সকল ফোল্ডারের ভিতরেই এরকম ফাইল/ফোল্ডার পাওয়া যাবে। এই ফাইল ফোল্ডার একটার পরে একটা কিভাবে সাজানাে আছে এটা বুঝে গিয়ে থাকলে তােমার ট্রি ডেটা স্ট্রাকচারের ব্যাসিক বুঝা হয়ে গেছে।',),
                  kDescriptionGap,
                  Description(description: 'এইবার এক টু বইয়ের ভাষায় কথা বলা যাক। ট্রি হচ্ছে কিছু নােডের সমন্বয়ে গঠিত একটা নন-লিনিয়ার এবং Hierarchical Data Structure. যেখানে নােডগুলাে একে অপরের সাথে যুক্ত থাকবে কিন্তু কোনো সাইকেল তৈরি করবে না। যেমন নিচের ছবিটি  একটি ট্রি ডেটা স্ট্রাকচারের উদাহরণ। যেখানে ৯ টি নােড যুক্ত হয়ে একটা স্ট্রাকচার তৈরি করেছে এবং নােডগুলোর মধ্যে কোনাো সাইকেল তৈরি হয় নি।',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree02.png',),
                  kTitleGap,
                  Description(description: 'আরো কয়েকটি উদাহরণ দেখানো হলোঃ ',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree03.png',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree04.png',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree05.png',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree06.png',),
                  kDescriptionGap,
                  ImageViewData(imageLink: 'Images/tree/tree07.png',),
                  kTitleGap,
                  Description(description: 'বাস্তবে একটা গাছ বা ট্রি এর মূল বা রুট থাকে নিচে আর শাখা-প্রশাখা, পাতা থাকে উপরের দিকে। কিন্তু কম্পিউটার সায়েন্সের ক্ষেত্রে ব্যাপারটা উল্টা! :P. একদম শুরুর Tree এর উদাহরনের দিকে তাকাও। যেই ছবিটা দেয়া আছে সেটাকে ১৮০ ডিগ্রি অ্যাঙ্গেলে উল্টায় দিলে কিন্তু দেখতে সত্যিকারের গাছের মতই লাগবে। ছবির একদম উপরে My Computer হচ্ছে এই গাছের বা ট্রি এর root (মূল)। Java.pdf হচ্ছে। এই ট্রি এর অন্যতম একটা পাতা (leafा). এরকম আরাে অনেক পাতা থাকতে পারে এই ট্রি এর মধ্যে। একটা ট্রি এর কোন অংশকে কী বলা হয় সেই বিষয়গুলাো এখন দেখব।',),
                  kDescriptionGap,
                  Description(description: 'Root: একটা Tree এর একদম top node-কে বলা হয় রুট। রুট নােডকে অন্য কোন নােড পয়েন্ট করে না।',),
                  kDescriptionGap,
                  Description(description: 'Child: একটা ট্রিতে রুট ছাড়া বাকি যেই নোডগুলো থাকে সেগুলো child.',),
                  kDescriptionGap,
                  Description(description: 'Parent: কোনাে একটা নােডের যদি এক বা একাধিক child থাকে তাহলে তাকে বলা হয় parent.',),
                  kDescriptionGap,
                  Description(description: 'Siblings: যেই নােডগুলাের parent একই তাদেরকে বলে siblings (আপন মায়ের পেটের ভাই বােন আর কি! ).',),
                  kDescriptionGap,
                  Description(description: 'Edge: যেই কানেকশন বা লিংকের মাধ্যমে একটা নোড আরেকটা নােডের সাথে যুক্ত থাকে।',),
                  kDescriptionGap,
                  Description(description: 'Leaf: যেই নােডের কোনাে child নাই। একে external node-ও বলা হয়।',),
                  kDescriptionGap,
                  Description(description: 'Branch: যেই নােডের অন্তত একটা child আছে সেটাই একটা branch.',),
                  kDescriptionGap,
                  Description(description: 'Degree: কোনাে একটা নাডের sub-tree এর সংখ্যাই ঐ নোডের degree.',),
                  kDescriptionGap,
                  Description(description: 'Path: একটা নােড থেকে আরেকটা নােডে পৌঁছানাের জন্য edge এর মাধ্যমে এক বা একাধিক নােডের সিকোয়েন্সই হচ্ছে path.',),
                  kDescriptionGap,
                  Description(description: 'Height of Node: কোনাে একটা নােড থেকে একটা leaf-এ পৌঁছাতে সব চেয়ে লম্বা যে দূরত্ব অতিক্রম করতে হয়, অর্থাৎ একটা নোড থেকে সবচেয়ে দূরের leaf-এ পৌঁছাতে অতিক্রম করা edge এর সংখ্যাই হচ্ছে ঐ নােডের height.',),
                  kDescriptionGap,
                  Description(description: 'Height of Tree: রুটের height-ই কোনোে ট্রি এর height. অর্থাৎ রুট থেকে সব চেয়ে লম্বা পথে leaf এ পৌঁছাতে যে কয়টি edge পার হতে হয় সেটিই height of tree.',),
                  kDescriptionGap,
                  Description(description: 'Depth: রুট থেকে কোনাে একটা নােডে পৌঁছানাের edge সংখ্যাই ঐ নােডের depth.',),
                  kDescriptionGap,
                  Description(description: 'Level: কোনাে একটা নোডের Level হচ্ছে রুট থেকে ঐ নোডে পৌঁছানাের edge এর সংখ্যার চেয়ে ১ বেশি। সংক্ষেপে, level = 1 + depth.',),
                  kDescriptionGap,
                  Description(description: 'Ancestor: যদি A নাড থেকে B নােডে যাওয়া যায় তাহলে A হচ্ছে। B এর ancestor. যদি A->B->C->D যাওয়া যায়। তাহলে D এর ancestor হচ্ছে A, B ও C.',),
                  kDescriptionGap,
                  Description(description: 'Descendant: যদি A নােড থেকে B নােডে যাওয়া যায় তাহলে B হচ্ছে A এর descendant. যদি A->B->C->D যাওয়া যায়। তাহলে D হচ্ছে A, B ও C এর descendant',),
                  kTitleGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Application & Classification of Tree', ID: 'applicationoftree',),
                  kDescriptionGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Binary Search Tree', ID: 'binarysearchTRee',),
                  kTitleGap,
                  DataTitle(title: 'Some properties of Tree',),
                  kDescriptionGap,
                  Description(description: 'One way direction: ট্রি এর রুট থেকে যখন অন্যান্য নােডে traverse করা হবে সেটি হবে এক দিকে। অর্থাৎ root থেকে leaf এর 1. দিকে। কিন্তু leaf থেকে root এর দিকে কোনা direction বা link থাকবে না।',),
                  kDescriptionGap,
                  Description(description: 'No cycle: একটা ট্রি এর মধ্যকার নােডগুলাে কেবল মাত্র parent- child relationship এর মত করে যুক্ত থাকবে। পরস্পরের সাথে এমন ভাবে যুক্ত হওয়া যাবে না যেখানে নােডগুলাের মধ্যে কোনাে loop বা cycle তৈরি হয়।',),
                  kDescriptionGap,
                  Description(description: 'All nodes are must be connected: কোনাে একটা ট্রি এর এ কোনাে দুটি নােড নিজেদের মধ্যে একটা মাত্র লিংকের মাধ্যমে যুক্ত থাকতে পারবে। যদি এক গুচ্ছ নােড আরেক গুচ্ছ নােডের সাথে কোনাে লিংক দ্বারা যুক্ত না থাকে তাহলে উভয় গুচ্ছ নােডকে একত্রে ট্রি বলা যাবে না। গুচ্ছগুলো যদি আলাদা আলাদা ভাবে ট্রি এর বৈশিষ্ট্য পূরণ করে সেক্ষেত্রে সবগুলাে আলাদা আলাদা ট্রি হিসেবে বিবেচিত হবে।',),
                  kDescriptionGap,
                  Description(description: 'Every child must have only one parent: root node sals poy AIGGT EAM মাত্র একটি parent node থাকবে। অর্থাৎ একাধিক নাড কোনাে একটা নোডকে পয়েন্ট করতে পারবে না বা কোনাে child এর একাধিক parent থাকতে পারবে না। শুধুমাত্র root node এর কোনোে parent node থাকবে না।',),
                  kDescriptionGap,
                  Description(description: 'Recursive Data Structure: ট্রি-কে রিকার্সিভ ডেটা স্ট্রাকচারও বলা হয়। কারণ হচ্ছে রুটের উপাদানগুলাে রিকার্সিভলি সাজানাে থাকে। যেমন ধরাে, T একটা ট্রি যার রুট হচ্ছে R. এই রুটের দুইটা child আছে। এই দুইটা child এর প্রত্যেকের আবার আরাে ২ টা করে child আছে। তাহলে কী দাঁড়াচ্ছে? রুট R এর অধীনে আছে দুইটা ট্রি, t1, t2. ধরতে পারাে এদের রুট r1, r2. দেখলা ট্রি এর ভিতরে ট্রি, রুটের ভিতরে রুট? এই রুটগুলোর অধীনে ওদের বাচ্চাকাচ্চা আছে। এরপর নাতিপুতি আছে। ট্রি এর ভিতর ট্রাভার্স করলে শেষ পর্যায়ে একটা নোডই পাওয়া যাবে। এই ট্রি এর ভিতর ট্রি, নােডের ভিতর নােড এই বৈশিষ্ট্যের জন্যেই একে বলা হয় রিকার্সিভ ডাটা স্ট্রাকচার। ডেটাগুলোে recursively একটার ভিতরে আরেকটা সাজানাে থাকে।',),
                  kDescriptionGap,
                  Description(description: 'Number of Edges is N-1: কোনো একটা ট্রিতে N সংখ্যক নোড থাকলে তাতে অবশ্যই N-1 সংখ্যক edge থাকবে। যেহেতু কোনাে নাডের একাধিক parent হতে পারে না তাই এই রুলসটা সকল ট্রি এর জন্য সত্য হবে।',),
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
