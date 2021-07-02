import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class ArrayTraversing extends StatelessWidget {
  static String id = 'arraytraversing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Array ',
          str2: 'Traversing',
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
            DataTitle(title: 'Array Traversing',),
            kTitleGap,
            Description(description: 'তুমি ১০০ সাইজের একটা অ্যারে ডিক্লেয়ার করলা। এরপর তাতে কিছু ডেটা রাখলা এরপর কাজ কী? এরপর হয় তােমাকে সেই ডেটাগুলাো প্রিন্ট করতে হবে, বা নির্দিষ্ট কোন ডেটার উপর নির্দিষ্ট কোন কাজ করা লাগতে পারে। কোন একটা ডেটা সার্চ করার দরকার হতে পারে অথবা কোন একটা শর্ত অনুযায়ী ডেটাগুলােকে সাজানাে লাগতে পারে। এর মানে হচ্ছে তোমার মেমরি সংরক্ষিত ডেটাগুলোতে তুমি অ্যাক্সেস করবে বা ডেটাগুলাের উপর তুমি ভ্রমণ (traverse) করবে।',),
            kDescriptionGap,
            Description(description: 'যেভাবে লুপ চালিয়ে প্রতিটা ইন্ডেক্সে ইনপুট নিয়েছিলাম, একই ভাবে লুপ চালিয়ে প্রতিটা ইন্ডেক্সে ট্রাভার্স করতে পারি। এই ট্রাভার্সের মাধ্যমে চাইলে কোন ডেটা প্রিন্ট করতে পারি, কান ডেটার সাথে অ্যারিথমেটিক কোন অপারেশন ঘটাতে পারি। কোন ডেটা মুছে দিতে পারি ইত্যাদি।',),
            kDescriptionGap,
            Description(description: 'এখন সবগুলা ইন্ডেক্সের ভ্যালুগুলো একেকটা লাইনে প্রিন্ট করতে চাইলে নিচের কোডটা লিখা যায়ঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 180,
              child: DartCodeViewer(r'''
for(i = 0; i<number_of_student; i++)
{
    printf(“%d\n”, age[i]);
}
               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'তাহলে age অ্যারের 0-তম ইন্ডেক্স থেকে (number_of_student - 1 ) -তম ইন্ডক্স পর্যন্ত সবগুলো ইন্ডেক্সের ভ্যালু পরপর লাইনে প্রিন্ট করে দিবে। যদি শেষ থেকে শুরুর element-গুলাে প্রিন্ট করতে চাও তাহলে লুপটাকে একটু মডিফাই করলেই কাজ করবে। যথাঃ for(i = number_of_student - 1; i&gt;=0; i=){}. অর্থাৎ অ্যারের শেষ ইন্ডেক্স থেকে প্রথম ইন্ডেক্সের সবগুলাে মান প্রিন্ট হবে।',),
            kDescriptionGap,
            Description(description: 'তুমি ইচ্ছা করলে নির্দিষ্ট একটা ইন্ডেক্সের ভ্যালুও ইন্ডেক্স নাম্বারের সাহায্যে প্রিন্ট করতে পারােঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 120,
              child: DartCodeViewer(r'''
printf("%d", age[3]);


               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'উপরের কোডে age array এর 3 নাম্বার ইন্ডেক্সের মানটা প্রিন্ট হবে।',),
            kDescriptionGap,
            Description(description: 'কখনাে যদি এমন হয় যে ইউজার লুপ ঘুরিয়ে ১০ টি ইন্ডেক্সের নাম্বার ইনপুট দিবে। যেই ইন্ডেক্সের নাম্বার ইনপুট দিবে সেই ইন্ডেক্সের ভ্যালু প্রিন্ট করতে হবে। তাহলে কী করবা?',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 200,
              child: DartCodeViewer(r'''
for(i = 1; i<=10; i++)
{
    scanf(“%d”, &index);
    
    printf(“%d”, age[index]);
}

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'উপরের কোডে প্রতিবার একটা ইন্ডেক্সের মান ইনপুট নেয়া হচ্ছে। পরের লাইনে সেই ইন্ডেক্স এর ভ্যালু প্রিন্ট করা হচ্ছে।',),
            kDescriptionGap,
            Description(description: 'সব ছাত্রের বয়সের গড় বের করতে চাইলে কী করতে হবে? ধরাে প্রথমে অ্যারেতে ইনপুট নেয়া হল। এরপর অ্যারেতে লুপ চালিয়ে ট্রাভার্স করব। প্রতিটা ইন্ডেক্সের ভ্যালু যোগ করব এরপর number_of_student দিয়ে ভাগ করব।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 250,
              child: DartCodeViewer(r'''
for(i = 0; i<number_of_student; i++)
{
    sum = sum + age[i];
}

average = sum/number_of_student;

printf(“%d”, average);

               ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
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
