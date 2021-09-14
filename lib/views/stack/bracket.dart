import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class Bracket extends StatelessWidget {
  static String id = 'bracket';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'Bracket ',
          str2: 'Balancing',
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
                  kHeaderGap,
                  DataTitle(title: 'স্ট্যাক ব্যবহার করে ব্র্যাকেটের ব্যালেন্স চেকিং',),
                  kDescriptionGap,
                  Description(description: 'এই equation-টা কি ঠিক আছে? x = (34-5 * (344%71 (65+34)) - 344))',),
                  kDescriptionGap,
                  Description(description: 'মানে এটা এক্সিকিউট করতে যতগুলাে ব্র্যাকেট বা parentheses দরকার সবগুলো কি ঠিক ঠাক পজিশনে আছে? নাকি দুই একটা কম-বেশি আছে? নাকি দুই একটা কম বেশি আছে? দেখলেই ধরে ফেলবে যে শেষে একটা ব্র্যাকেট বেশি দেয়া হয়েছে। তার মানে এই স্টেটমেন্টটা এক্সিকিউট করতে গেলে ব্রযাকেটের কম-বেশির জন্য ঝামেলা হবে।',),
                  kDescriptionGap,
                  Description(description: 'কোন একটা গাণিতিক সমস্যা সমাধানের জন্য সংখ্যা, বিভিন্ন অ্যারিথমেটিক অপারেটর ও ব্র্যাকেট ব্যবহার করা হয়ে থাকে। সংখ্যা ও অপারেটর নিয়ে আপাতত চিন্তা করছি না। এক সেট ব্র্যাকেট দেয়া হলে আমাদেরকে বলতে হবে সেই ব্র্যাকেটের সেটটা balanced কিনা?',),
                  kDescriptionGap,
                  Description(description: 'Example of Balanced Parentheses: (), (()), (()()), ((())), ()()',),
                  kDescriptionGap,
                  Description(description: 'Example of Non-Balanced Parentheses: )(, ()()), )((())))',),
                  kTitleGap,
                  DataTitle(title: 'Parentheses Balance Checking using Stack Data Structure',),
                  kDescriptionGap,
                  Description(description: 'এক সেট ব্র্যাকেটের ব্যালেন্স ঠিক আছে কিনা সেটা চেক করার আইডিয়াটা খুবই সােজা-সাপটা আর সহজ। প্রথমত একটা স্ট্রিং এর মধ্যে ব্র্যাকেটটা ইনপুট নিব। আর একটা স্ট্যাক নিব। ব্র্যাকেটের শুরু থেকে চেক করা শুরু করতে হবে। আমাদের এই প্রবলেমের ক্ষেত্রে ইনপুট হতে পারে "(" অথবা ")"। starting ও closing bracket এর জন্য দুটি আলাদা অপারেশন হবে। ',),
                  kDescriptionGap,
                  Description(description: '1. String এ লুপ ঘুরিয়ে চেক করার সময় যদি ")" ক্যারেক্টার পাওয়া যায় তাহলে দেখব স্ট্যাকে কিছু আছে কিনা অর্থাৎ if(!stack.empty()) সত্য কিনা। যদি স্ট্যাকটা খালি না হয়ে থাকে এবং টপ পজিশনে "(" থাকে তাহলে স্ট্যাক থেকে top element টা pop করে নিব। কিন্তু যদি স্ট্যাকটা খালি থাকে তাহলে ")" -কে স্ট্যাকে পুশ করে দিব।',),
                  kDescriptionGap,
                  Description(description: '2. প্রথম পয়েন্টের ৩টা কন্ডিশন সত্য না হলে ক্যারেক্টারটাকে স্ট্যাকে পুশ করে দিব। পুরাে স্ট্রিং এর উপর এই দুটি অপারেশন চালানোর পরে চেক করব স্ট্যাকটা খালি কিনা। যদি স্ট্যাকটা খালি হয়ে থাকে তাহলে বুঝতে হবে আমাদের ব্র্যাকেটগুলো ব্যালেন্স হয়ে আছে। অন্যথায় non- balanced.',),
                  kDescriptionGap,
                  Description(description: 'পুরাে স্ট্রিং এর উপর এই দুটি অপারেশন চালানোর পরে চেক করব স্ট্যাকটা খালি কিনা। যদি স্ট্যাকটা খালি হয়ে থাকে তাহলে বুঝতে হবে আমাদের ব্র্যাকেটগুলো ব্যালেন্স হয়ে আছে। অন্যথায় non- balanced.',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
    for(int i=0; str[i]; i++){
    
              if(!myStack.empty() && myStack.top()=='(' && str[i]==')')
                  myStack.pop();
              else
                  myStack.push(str[i]);
    }
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'স্ট্যাক empty থাকা না থাকার উপর কিভাবে সিদ্ধান্ত নিলাম?',),
                  kDescriptionGap,
                  Description(description: 'লক্ষ্য করাে, আমরা কখন কোন একটা ব্র্যাকেটের সেটকে ব্যালেন্স বলব? যখন প্রতিটা স্টার্টিং ব্র্যাকেটের জন্য একটা করে ক্লোজিং ব্র্যাকেট পাওয়া যাবে। অর্থাৎ ব্র্যাকেটগুলো জোড়ায় জোড়ায় থাকবে। &#34;)(&#34; এটাকে কিন্তু জোড়া বলা যাবে না। valid pair হবার জন্য প্রথমে থাকতে হবে স্টারটিং ব্র্যাকেট এরপর ক্লোজিং ব্র্যাকেট।',),
                  kDescriptionGap,
                  Description(description: 'আমরা চেক করছি কোনাে একটা ক্লোজিং ব্র্যাকেটের জন্য তার স্টার্টিং ব্র্যাকেট পাওয়া যায় কিনা। তাই স্টার্টিং ব্র্যাকেটগুলােকে পাওয়া মাত্র স্ট্যাকে পুশ করে দিচ্ছি। আর যখন ক্লোজিং ব্র্যাকেট ")" পাওয়া যায় তখন স্ট্যাকের টপে থাকা "(" উপাদানটাকে pop করে স্ট্যাকের টপ থেকে &#34;(&#34;-কে ডিলেট করে দিচ্ছি। এতে কী হচ্ছে? অনেকটা এরকম মনে করতে পারাে যে, ক্লোজিং ব্র্যাকেটের সাথে তার জোড়ার স্টার্টিং ব্র্যাকেটকে কাটাকাটি করে দিয়েছি। যেই জোড়ার জন্য কাটাকাটি করলাম তারা ভ্যানিশ। এদেরকে নিয়ে আর চিন্তা করা লাগবে না। এভাবে স্টার্টিং পেলে স্ট্যাকে ঢুকিয়ে দিব, ক্লোজিং পেলে (এবং স্ট্যাক খালি না হলে) স্ট্যাক থেকে স্টার্টিংটাকে মুছে দেয়ার মাধ্যমে pair-টাকে ভ্যানিশ করব।',),
                  kDescriptionGap,
                  Description(description: 'এভাবে করতে থাকলে আসলে কী দাঁড়াবে? যদি তােমার ব্র্যাকেটের সেটটা balanced হয়, তাহলে প্রতিটা ক্লোজিং এর জন্য একটা করে স্টার্টিং থাকবে। সুতরাং স্ট্রিং এ লুপ ঘুরিয়ে চেক করার সময় যখন ")" পাওয়া যাবে এর জন্য অবশ্যই স্ট্যাকে একটা "(" পাওয়া যাবে। আর পাওয়া গেলেই সেটাকে মুছে দেয়া হবে। অর্থাৎ প্রতিটা ক্লোজিং ব্র্যাকেটের জন্য তার জোড়ার স্টার্টিং ব্র্যাকেটটাকে স্ট্যাক থেকে মুছে ফেলা হচ্ছে। সবগুলাে ক্লোজিং এর জন্য সবগুলো স্টার্টিং স্ট্যাক থেকে মুছে দিলে স্ট্যাক তাে পুরােটাই খালি হয়ে যাবে তাই না? এজন্যেই balanced bracket এর ক্ষেত্রে স্ট্যাকটা empty হয়ে যায়।',),
                  kDescriptionGap,
                  Description(description: 'কখন non-balanced হবে? যখন প্রতিটা ক্লোজিং এর জন্য একটা করে স্টার্টিং থাকবে না। হয় স্টার্টিং একটা বেশি থাকবে, নাইলে কম থাকবে। এই কম-বেশিটা কিভাবে চেক করা হচ্ছে? কোডের দিকে তাকাও। ৪ লাইনের কোড হলেও এর অন্তর্নিহিত (!) কথা অনেক! স্ট্যাক থেকে তখনই কোন একটা এলিমেন্ট মুছে দেয়া হচ্ছে (pop) যখন স্ট্যাকটা খালি নয় এবং স্ট্রিং এর কোন একটা ইন্ডেক্সে &#39;)&#39; পাওয়া গেছে। এই দুটি শর্ত মানলে pop, না মানলে push. আমরা কিন্তু কোডের কোথাও লিখি নাই (&#39; পেলে পুশ করব। তাই যদি স্ট্রিং এ &#39;)&#39; পাওয়া যায় কিন্তু স্ট্যাকটা খালি, সেক্ষেত্রেও স্ট্যাকে &#39;)&#39;-ই পুশ করা হবে। যেহেতু এই একটা ক্যারেক্টার অতিরিক্ত পুশ করা হয়েছে তাই non-balanced string এর ক্ষেত্রে স্ট্যাকটা কখনােই empty হবে না।',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 300,
                    child: DartCodeViewer(r'''
    #include<bits/stdc++.h>

using namespace std;

int main()
{
    char str[10] = "((())())";

    stack<char> myStack;

    for(int i=0; str[i]; i++)
    {
              if(!myStack.empty() && myStack.top()=='(' && str[i]==')')
                  myStack.pop();
              else
                  myStack.push(str[i]);
    }

    if(myStack.empty())
              printf("%s is Balanced\n", str);
    else
              printf("%s is Not-balanced\n", str);


    return 0;
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),

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
