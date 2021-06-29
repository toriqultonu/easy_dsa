import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class UpdateArray extends StatelessWidget {
  static String id = 'updatearray';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'More Array Operation',
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
            Description(description: 'কোন একটা প্রােগ্রাম বা অ্যাপ্লিকেশনে অসংখ্য ডেটা নিয়ে কাজ করা লাগতে পারে। ডেটার উপর বিভিন্ন ধরণের অপারেশন বা প্রসেসিং এর প্রয়ােজন হয়। যেমনঃ ফেসবুকে আমাদের প্রােফাইলের একটা নাম আছে। ফেসবুকের সার্ভারে যেই ডেটাবেজ আছে তার কোন একটা টেবিলের কোন একটা ফিল্ডে এই profile name-টা স্টোর করা আছে। আমি যখন কোন পােস্ট দেই বা কারাে পােস্টে লাইক-কমেন্ট | দেই তখন সবাই কিন্তু দেখতে পারে যে আমি লাইক/কমেন্ট করেছি। সেখানে আমার প্রােফাইলের নাম show করে। এই নামটা কিন্তু সার্ভারে থাকা ডেটাবেজের ঐ নির্দিষ্ট ফিল্ড থেকে নিয়ে এসে দেখানাে হয়।',),
            kDescriptionGap,
            Description(description: 'মনে করাে পৃথিবীর সবার ফেসবুকের profile name-গুলো একটা অ্যারেতে রাখা হয়েছে। প্রতিটা ইন্ডেক্সে একটা করে নাম রাখা আছে। প্রথম ইন্ডেক্সে ধরাে জাকারবার্গের নাম আছে। দ্বিতীয় ইন্ডেক্সে তােমার নাম, তৃতীয় ইন্ডেক্সে আছে আমার নাম। আমি আমার প্রােফাইল নামটা চেঞ্জ করতে চাই। এডিট অপশনে গিয়ে নামটা চেঞ্জ করে দিলেই যে কেউ আমার লাইক-কমেন্ট বা পােস্টে কিন্তু আমার আপডেট হওয়া নামটাই দেখবে। তাহলে কাজটা কিভাবে হবে? আমি এখান থেকে নামটা আপডেট করে যখন সাবমিট করব, আমাদের সেই অ্যারের তৃতীয় ইন্ডেক্সে আগের নামটা নতুন নাম দিয়ে রিপ্লেস হয়ে যাবে। O ? aba array update operation.',),
            kDescriptionGap,
            Description(description: 'লক্ষ্য করাে, আমরা অ্যারেকে আপডেট করেছি তার ইন্ডেক্স নাম্বার দিয়ে। এইবার বুঝার সুবিধার্তে নাম না স্টোর করে একটা ক্লাসের সকল শিক্ষার্থীর বয়স স্টোর করি। যেমনটা আগের পর্বে করেছিলাম। ধরাে, age নামক অ্যারেতে ৫ জন ছাত্রের বয়স এভাবে স্টোর করা আছেঃ',),
            kTitleGap,
            Description(description: 'int age[] = {7, 6, 9, 7, 5};',),
            kTitleGap,
            Description(description: 'আমরা যদি চাই শূণ্যতম ইন্ডেক্সে যেই ছাত্রের বয়স আছে সেটাকে 10 দিয়ে আপডেট করতে তাহলে কোড করব এভাবেঃ',),
            kTitleGap,
            Description(description: 'age[0] = 10;',),
            kTitleGap,
            Description(description: 'এক্ষেত্রে অ্যারের শূণ্যতম ইন্ডেক্সের ভ্যালু ৭ আর থাকবে না। এটা রিপ্লেস হয়ে যাবে 10 দিয়ে। এভাবে ইন্ডেক্স ধরে ধরে কোন একটা অ্যারের ভ্যালু আপডেট করতে পারি।',),
            kDescriptionGap,
            Description(description: 'যদি কখনাে ইউজারের থেকে ইন্ডেক্সের মান আর updated value ইনপুট নিয়ে অ্যারে আপডেট করতে হয় তাহলে নিচের মত কোড করা যেতে পারেঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 150,
              child: DartCodeViewer(r'''
while(true) //Infinite Loop
{
    scanf("%d %d", &index, &value);
    age[index] = value;
}
                    ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'মূল ব্যাপারটা এটাই। এখন যখন যেভাবে দরকার হবে সেভাবে নিজের মত করে ইমপ্লিমেন্ট করতে হবে। তবে খেয়াল রাখতে হবে যে অ্যারেতে যেই ইন্ডেক্সটি নাই সে ইন্ডেক্সে অ্যাক্সেস করছাে কিনা। অর্থাৎ কোন একটা অ্যারের সাইজ ১০ হলে তার তার ইন্ডেক্সগুলো হবে ০ থেকে ৯ পর্যন্ত। তুমি যদি অ্যারের ১০ম বা ১২তম ইন্ডেক্সে কান মান বসাতে চাও বা ১২তম ইন্ডেক্সের মান প্রিন্ট করতে চাও তাহলে প্রােগ্রাম ক্র্যাশ করবে। অনলাইন জাজ বা কনটেস্টের সময় এধরণের ঘটনায় Run Time Error নামক verdict পাবা। তাই অ্যারেতে ট্রাভার্স, ইনসার্ট, আপডেট, ডিলেট যেই অপারেশনই করাে না কেন; খেয়াল রাখবে যেন এই সমস্যা তৈরি না হয়। ',),
            kTitleGap,
            DataTitle(title: 'Deletion an Element of Array',),
            kDescriptionGap,
            Description(description: 'স্টোর করা ডেটাগুলাে প্রয়ােজনে ডিলেট করার দরকার হতে পারে। অ্যারেতে সিকোয়েন্স অনুযায়ী ডেটা স্টোর করা থাকে। age নামক অ্যারের সাইজ ১০ হলে তার ইন্ডেক্স নাম্বার হবে ০ থেকে ৯। আমরা যদি age[6] এর ডেটাকে অ্যারে থেকে মুছে ফেলতে চাই তাহলে age[7] এর ভ্যালুকে অ্যাসাইন করতে হবে age[6] এ। age[8] এর ভ্যালুকে অ্যাসাইন করতে হবে age[7] এ। age[9] এর ভ্যালু অ্যাসাইন করতে হবে age[8] এ। তারমানে age[7] থেকে age[9] পর্যন্ত সবগুলাে ভ্যালুকে আমরা ১ ঘর করে বাম দিকে সরিয়ে দিলাম। কোডটা দেখলে আরো ক্লিয়ার হবেঃ',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 300,
              child: DartCodeViewer(r'''
#include<stdio.h>

int main()
{
    int arr_size = 5, index, i, j;
    int age[arr_size];

    //array input
    printf("Input 5 elements: ");
    for(i =0; i<arr_size; i++)
        scanf("%d", &age[i]);

    //input zero based index number for deletion
    printf("Input index number (0 to 4): ");
    scanf("%d", &index);

    //deletion by replacing 
    j = index;
    while(j<arr_size-1)
    {
        age[j] = age[j+1];
        j++;
    }

    arr_size = arr_size - 1;

    for(i = 0; i<arr_size; i++)
        printf("%d ", age[i]);

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
