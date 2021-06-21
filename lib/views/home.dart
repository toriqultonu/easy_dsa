import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:demo_doc_vewer/model/constant.dart';
import 'package:demo_doc_vewer/widgets/appBar.dart';
import 'package:demo_doc_vewer/widgets/codeView.dart';
import 'package:demo_doc_vewer/widgets/description.dart';
import 'package:demo_doc_vewer/widgets/header.dart';
import 'package:demo_doc_vewer/widgets/image_data.dart';
import 'package:demo_doc_vewer/widgets/network_image.dart';
import 'package:demo_doc_vewer/widgets/tileButton.dart';
import 'package:demo_doc_vewer/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:demo_doc_vewer/widgets/navigation_drawer.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(str1: 'Data',str2:'Structure'),
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
            Header(header: "ডাটা স্ট্রাকচার"),
            kHeaderGap,
            ImageViewData(imageLink: 'Images/linkedlist3.png'),
            kTitleGap,
            DataTitle(title: "লিংকড লিস্ট"),
            kDescriptionGap,
            Description(description: "লিংকড লিস্ট বেসিক একটা ডাটা স্ট্রাকচার। আমরা সাধারণত তথ্য রাখার জন্য অ্যারে ব্যবহার করি, তবে অ্যারের কিছু সীমাবদ্ধতা আছে যে কারণে অনেক সময় লিংকড লিস্ট ব্যবহারের দরকার হয়। লিংকড লিস্ট নিয়ে জানতে হলে অবশ্যই পয়েন্টার সম্পর্কে ধারণা থাকতে হবে।"),
            kDescriptionGap,
            Description(description: "লিংকড লিস্ট বেসিক একটা ডাটা স্ট্রাকচার। আমরা সাধারণত তথ্য রাখার জন্য অ্যারে ব্যবহার করি, তবে অ্যারের কিছু সীমাবদ্ধতা আছে যে কারণে অনেক সময় লিংকড লিস্ট ব্যবহারের দরকার হয়। লিংকড লিস্ট নিয়ে জানতে হলে অবশ্যই পয়েন্টার সম্পর্কে ধারণা থাকতে হবে।"),
            ImageViewData(imageLink: 'Images/sampledata.gif'),
            kDescriptionGap,
            Description(description: "লিংকড লিস্ট বেসিক একটা ডাটা স্ট্রাকচার। আমরা সাধারণত তথ্য রাখার জন্য অ্যারে ব্যবহার করি, তবে অ্যারের কিছু সীমাবদ্ধতা আছে যে কারণে অনেক সময় লিংকড লিস্ট ব্যবহারের দরকার হয়। লিংকড লিস্ট নিয়ে জানতে হলে অবশ্যই পয়েন্টার সম্পর্কে ধারণা থাকতে হবে।"),
            ImageViewData(imageLink: 'Images/sampledata2.gif'),
            kTitleGap,
            NetworkImageView(),
            kTitleGap,
            TileButton(iconData: Icons.play_arrow, buttontitle: 'Binary Tree'),
            kDescriptionGap,
            Container(
              margin: kSidePadding,
              height: 300,
              child: DartCodeViewer(r'''
      int fact(int n)
      {
       if(n==0)
       return 1;
       return fact(n-1)*n;
      }
      int Ifact(int n)
      {
       int f=1,i; 
       for(i=1;i<=n;i++) 
       f=f*i;
      
       return f;
      }
      int main()
      {
       int r=Ifact(5);
       printf("%d ",r);
       return 0;
      }
                    ''',
              //backgroundColor: kSecondaryThemeColor2,
              commentStyle: TextStyle(fontSize: 16),),
            ),
            kDescriptionGap,
            Description(description: "লিংকড লিস্ট বেসিক একটা ডাটা স্ট্রাকচার। আমরা সাধারণত তথ্য রাখার জন্য অ্যারে ব্যবহার করি, তবে অ্যারের কিছু সীমাবদ্ধতা আছে যে কারণে অনেক সময় লিংকড লিস্ট ব্যবহারের দরকার হয়। লিংকড লিস্ট নিয়ে জানতে হলে অবশ্যই পয়েন্টার সম্পর্কে ধারণা থাকতে হবে।"),

          ],
        ),
      ),
    );
  }
}