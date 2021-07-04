import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/views/queue/dqueue.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/navigation_drawer.dart';
import 'package:easy_dsa/widgets/tileButton.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class StackView extends StatefulWidget {
  static String id = 'stack';

  @override
  _StackViewState createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'স্ট্যাক',
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
                  kHeaderGap,
                  DataTitle(title: 'Basic Concept:',),
                  kDescriptionGap,
                  Description(description: 'বল্টু একজন ভােজন রসিক বালক। প্রতি সপ্তাহেই সে বিভিন্ন রেস্টুরেন্টে ভাল-মন্দ খানা-দানা করে থাকে। মাসের প্রথম সপ্তাহে সে মুরগি পোড়া খেলে দ্বিতীয় সপ্তাহে খায় কাচ্চি বিরিয়ানি। তৃতীয় সপ্তাহে নিরব হােটেলের ভাত ভর্তা খেয়ে চতুর্থ সপ্তাহে খায় শরমা হাউজের পাহাড়ি কাবাব। এভাবে সে নিয়মিত খাওয়া-দাওয়া চালিয়ে যাচ্ছে। কী পরিমাণ খাওয়া দাওয়া হচ্ছে তার হিসাব রাখার জন্য নিচের ছবির মত একটা হুকের মধ্যে রেস্টুরেন্টের বিলের স্লিপটা গেঁথে রাখে।',),
                  kDescriptionGap,
                  Description(description: 'হুট করে সে খেতে যাওয়ার আগে চেক করার ইচ্ছা করল গত সপ্তাহে কী খেয়েছ? সে গত সপ্তাহের স্ল্প কোথায় পাবে? গেঁথে রাখা কাগজের স্তুপের (ইংরেজিতে যাকে বলে stack) একদম উপরে তাই না? গত সপ্তাহের সিল্প বের করার জন্য কিন্তু তার এই স্তুপের সব কাগজ বের করতে হয় নি। সে সবার উপরেরটা উঠিয়ে দেখল কী খেয়েছে। এটা হাতে থাকা অবস্থায় তার আগের সপ্তাহে কী খেয়েছে। সেটা দেখতে চাইলে স্তুপের উপরে যেটা আছে সেটাকেই সে চেক করবে। এভাবে একটা একটা করে সে সব চেয়ে পুরােনাে স্ল্পটা খুঁজে পাবে। তাহলে দেখা যাচ্ছে যেই স্লিপটা সবার শেষে গাঁথা হচ্ছে সেটাকে বের করতে হচ্ছে সবার শুরুতে। ইংরেজিতে যাকে বলা যায় Last In First Out বা LIFO. আর এই স্তুপের মত করে একটার উপরে একটা ডেটা সাজিয়ে রাখার ডেটা স্ট্রাকচারের নামই হচ্ছে স্ট্যাক - Stack Data Structure.',),
                  kDescriptionGap,
                  Description(description: 'Simple Array ও Linked List উভয়টা দিয়েই Stack implement করা যায়। এই লেখায় অ্যারে দিয়ে স্ট্যাক ইমপ্লিমেন্ট করা দেখানাে হবে। স্ট্যাক বোঝার জন্য তাই Array এর উপর স্বচ্ছ ধারণা থাকতে হবে। এই অ্যারেকে নির্দিষ্ট কিছু নিয়মে ব্যবহার করার মাধ্যমেই স্ট্যাক ডেটা স্ট্রাকচারটি ইমপ্লিমেন্ট করা হয়।',),
                  kDescriptionGap,
                  Description(description: 'ডেটা স্ট্রাকচার মূলত ডেটাগুলােকে এমন ভাবে সুসজ্জিত বা সুবিন্যস্ত করার পদ্ধতি যেখানে সহজে ডেটা ইনপুট করা যায় এবং সেখান থেকে ডেটা read করা যায়। অন্যান্য ডেটা স্ট্রাকচারের মত স্ট্যাকেরও কয়েকটি ব্যাসিক অপারেশন রয়েছে।',),
                  kDescriptionGap,
                  Description(description: '* push- স্ট্যাকে ডেটা insert করা',),
                  Description(description: '* peek – top element কে read করা',),
                  Description(description: '* pop- স্ট্যাকের top এ থাকা ডেটাকে remove করে দেয়া',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/stack/stack2.gif',),
                  kTitleGap,
                  DataTitle(title: 'Applications of Stack Data Structure',),
                  kDescriptionGap,
                  Description(description: 'সাধারণত আমরা দরকার ছাড়া কোন কাজের কাজ করি না। যেহেতু স্ট্যাক ডেটা স্ট্রাকচার শেখাটা একটা কাজের কাজ তাই প্রথম প্রশ্ন আসবে আমরা কেন এটা শিখব?',),
                  kDescriptionGap,
                  Description(description: 'নিচে কয়েকটা কমন ক্ষেত্রের কথা উল্লেখ করা হল যেখানে স্ট্যাক ইমপ্লিমেন্ট করার দরকার হয়।',),
                  kDescriptionGap,
                  Description(description: '* Web Browser এর back ও forward বাটনের ফিচারটা ইমপ্লিমেন্ট করতে স্ট্যাক ব্যবহার করা হয়। এক্ষেত্রে দুইটা স্ট্যাক নেয়া যেতে পারে। একটার নাম দিলাম ব্যাক স্ট্যাক, আরেকটা ফরওয়ার্ড স্ট্যাক। ধরাে, তুমি কোন একটা ট্যাবে ফেসবুকের হােমপেজ ভিজিট করতেছাে। হােমপেজের লিংকটাকে ব্যাক স্ট্যাকে পুশ করা হয়। এই ট্যাবেই হাসানের রাফখাতার পেজ ওপেন করলা। এই পেজের লিংক স্ট্যাকে পুশ করা হয়। এরপর টু মারলা ইউটিউবে, সাথে সাথেই ইউটিউবের লিংক স্ট্যাকে পুশ করা হবে। এখন স্ট্যাকের একদম নিচে আছে ফেসবুকের হােমপেজ, তার উপরে আছে হাসানের রাফখাতার লিংক, তার উপরে আছে ইউটিউব। ইউটিউব ব্রাউজ করার সময় ব্যাক বাটনে ক্লিক করলে ইউটিউবের লিংকটা ব্যাক স্ট্যাক থেকে তুলে নিয়ে ঢুকানাে হবে ফরওয়ার্ড স্ট্যাকে। আর তােমার সামনে লোড করা হবে ব্যাকস্ট্যাকের সবার উপরে থাকা রাফখাতার লিংক। রাফখাতা দেখে ফরওয়ার্ড দিলে ফরওয়ার্ড স্ট্যাক থেকে লিংকটা তুলে এনে ব্যাকস্ট্যাকে রাখা হবে এবং তােমাকে ইউটিউবের পেজ দেখানাে হবে। এভাবে দুইটা stack ব্যাবহার করে WEeb browser এর back ও forward feature টা implement করা যায়।',),
                  kDescriptionGap,
                  Description(description: '* কোন সফটওয়ারের Undo feature implement করতেও স্ট্যাক ব্যবহার করতে হয়। ব্রাউজারের মত এখানেও দুইটা স্ট্যাক লাগে। ধরাে তুমি একটা টেক্সট এডিটর বানাচ্ছ। যাতে undo-redo feature থাকবে। ধরাে তােমার লজিক হচ্ছে প্রতিটা ক্যারেক্টার লিখলে একেকটা ক্যারেক্টারকে undo stack এ ঢুকিয়ে দিবা। Undo button এ ক্লিক করলে স্ট্যাকের উপরে থাকা অর্থাৎ তােমার ইনপুট করা সর্বশেষ অক্ষরটাকে undo stack থেকে তুলে নিয়ে redo stack এ ঢুকিয়ে দিলা। আবারাে আনড়ু বাটনে ক্লিক করলে undo stack থেকে আরেকটা ক্যারেকটার redo stack ঢুকিয়ে দিবা। redo button এ ক্লিক করলে redo stack এর উপরে থাকা অক্ষরটাকে undo stack এ ঢুকিয়ে দিবা। আর স্ক্রিনে দেখা যাবে সব সময় undo stack এ থাকা অক্ষরগুলাে।',),
                  kDescriptionGap,
                  Description(description: '* ক্যালকুলেটরে বড় একটা ইকুয়েশন যখন লিখি তখন ব্র্যাকেটের ব্যালান্স ঠিক আছে কিনা বা অপারেটর কোনটার কাজ আগে হবে বা পরে হবে সেটা চেক করার জন্য স্ট্যাক দরকার হয়। যেমন a + (b*c-(d/e)) টাইপের একটা হিসাব করতে চাচ্ছি। তখন স্ট্যাক ব্যবহার করে এই সমীকরণ খুব সহজে সমাধান করা যায়।',),
                  kDescriptionGap,
                  Description(description: '* তােমরা নিশ্চয়ই প্রােগ্রামিং করার সময় function ব্যবহার করে থাকবে। ধরো, main ফাংশন একটা স্ট্যাকে রাখা আছে। main থেকে a নামক ফাংশনকে কল করা হল। তাহলে ঐ স্ট্যাকে main এর উপরে a ফাংশনকে রাখা হবে। a ফাংশন যদি b ফাংশনকে কল করে তাহলে a এর উপরে b-কে রাখা হবে। b এর কাজ শেষ হলে b কে স্ট্যাক থেকে মুছে দেয়া হবে। তখন a এর বাকি কাজ সম্পন্ন করবে। a এর কাজ শেষ হলে এটাকেও স্ট্যাক থেকে বের করে দেয়া হবে। তখন স্ট্যাকে থাকবে শুধু main ফাংশন। তখন main function তার বাকি কাজ করে শেষ করলে প্রােগ্রাম exit হবে এবং এই ফাংশনকেও স্ট্যাক থেকে মুছে ফেলা হবে।',),
                  kTitleGap,
                  DataTitle(title: 'Stack Declaration',),
                  kDescriptionGap,
                  Description(description: 'আমরা পূর্বে যেই অ্যারে শিখেছি সেটাকে দিয়েই স্ট্যাকের কাজ করব। স্ট্যাকের জন্য মূলত একটা অ্যারেই ডিক্লিয়ার করতে হবে। সি প্রােগ্রামিং ল্যাঙ্গুয়েজে অ্যারে ডিক্লিয়ার করতে পারি এভাবেঃ',),
                  kDescriptionGap,
                  Description(description: 'int myStack[100];',),
                  kDescriptionGap,
                  Description(description: 'তাহলে এই স্ট্যাকে সর্বোচ্চ ১০০ টি ভ্যালু রাখা যাবে। সি++ ল্যাঙ্গুয়েজের Standard Template Library (STL) ব্যবহার করে অ্যারে ডিক্লিয়ার না করে সরাসরি স্ট্যাকই ডিক্লিয়ার করা যায়ঃ',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
              #include<stack>
              
              using namespace std;
              
              int main(){
              .
                  stack<int> myStack;
              .
              }
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/stack/stack1.png',),
                  kTitleGap,
                  DataTitle(title: 'PUSH Operation of Stack',),
                  kDescriptionGap,
                  Description(description: 'Push করার মানে হচ্ছে স্ট্যাকে একটা নতুন ডেটা ঢুকিয়ে দেয়া বা insert করা। স্ট্যাকটাকে এমন ভাবেই ম্যানেজ করা হয় যেন যেই মানটা ঢুকানো হবে সেটা সবার উপরে থাকে। C++ এর STL Stack ব্যবহার করে পুশ করতে চাইলে এই এক লাইন লিখলেই পুশ হয়ে যাবেঃ',),
                  kDescriptionGap,
                  Description(description: 'myStack.push(34);',),
                  kDescriptionGap,
                  Description(description: 'কিন্তু তুমি যদি সি ল্যাঙ্গুয়েজ বা অন্য কোন ল্যাঙ্গুয়েজ দিয়ে ম্যানুয়াল্যি পুশ করতে চাও তাহলে আরাে কয়েক লাইনের সহজ কোড লিখা লাগবে। int ভ্যালুর জন্য একটা push ফাংশন লিখে ফেলি, যার মধ্যে প্যারামিটার হিসেবে একটা int value পাঠাবো। সেই ফাংশনটা global array তে মানটা পুশ করে দিবে।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
              #define stackSize 100
              int myStack[stackSize], top = -1; //Global variables
              
              void push(int value){
              
                  if(top>=stackSize-1)
                      printf("Stack is full! Cannot push the value!");
                  else
                      myStack[++top] = value;
              
              }
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: '৬ নাম্বার লাইনে চেক করা হচ্ছে স্ট্যাকটা অলরেডি ডেটা দ্বারা full হয়ে গিয়েছে কিনা। top ভ্যারিয়েবলের মান Globally ডিক্লিয়ার করার সময় -1 করে দেয়া হয়েছে। এটা দিয়ে হিসাব রাখা হবে স্ট্যাকে কয়টা ডেটা পুশ হয়েছে। top এর মান stackSize এর সমান বা বড় না হলে অর্থাৎ স্ট্যাক full না হলে stack এ ভ্যালুটা পুশ করা হচ্ছে ৮ নাম্বার লাইনে। প্রতিবার পুশ করার পাশাপাশি ++top করা হয়েছে। এতে স্ট্যাকে প্রথম ভ্যালুটা ইনসার্টের সময় top এর মান -1 থেকে বেড়ে ০ হবে এবং myStack[0] এর ঘরে প্রথম ভ্যালুটা পুশ হবে। এরপর আবারাে পুশ ফাংশন কল করা হলে স্ট্যাক ফুল না হয়ে গিয়ে থাকলে আবারাে ৮ নাম্বার লাইনে স্ট্যাকের ++top-তম ইন্ডেক্সে অর্থাৎ myStack[1] এ এই নতুন ভ্যালু ইনসার্ট করা হবে।',),
                  kDescriptionGap,
                  Description(description: 'এই top ভেরিয়েবলটা বেশ গুরুত্ব বহন করে। স্ট্যাকে নতুন ভ্যালু ঢুকানার জন্য অ্যারের top-তম index এর মান ১ বাড়িয়ে নতুন ভ্যালুটা assign করা হয়। অ্যারেটা ডেটা দিয়ে পূর্ণ কিনা সেটাও top দিয়ে চেক করা হয়। পরবর্তীতে স্ট্যাকের সবার উপরের ভ্যালুটা read করার জন্যেও top এর সাহায্য নিতে হবে। মােট কথা স্ট্যাকের ডেটা read-write এর জন্য পুরোপুরি ভাবে আমরা top ভ্যারিয়েবলের উপর নির্ভরশীল।',),
                  kDescriptionGap,
                  Description(description: 'main function cRITF PuSh(45); push(24), push(-67); fonqis ZPa a a a e aGT myStack[0] তে থাকবে 45, myStack[1] এ থাকবে 24 এবং myStack[2] তে থাকবে -67.',),
                  kDescriptionGap,
                  Description(description: 'স্ট্যাকে ডেটা পুশ করতে করতে যখন top এর মান stackSize এর সমান হয়ে যাবে তখন আর কোন ভ্যালু স্ট্যাকে ঢােকানাে যাবে না। কারণ array এর সাইজ হচ্ছে stackSize এর মান, অর্থাৎ ১০০। অ্যারের ইন্ডেক্স নাম্বার শুরু হয়েছে 0 থেকে। সর্বশেষ ইন্ডেক্স এর নাম্বার 99. কিন্তু top এর মান stackSize বা 100 এর সমান হয়ে গেলে myStack[top] = value; অর্থাৎ অ্যারের top বা 100 নাম্বার ইন্ডেক্সে value এর মান অ্যাসাইন করার চেষ্টা করা হবে। কিন্তু ১০০ নাম্বার ইন্ডেক্স এই অ্যারেতে অনুপস্থিত। অ্যারেতে বা স্ট্যাকে জায়গা নাই, অথচ আমরা মান insert করতে চাচ্ছি। এই সিচুয়েশনকে বলা হয় Stack Overflow.',),
                  kTitleGap,
                  DataTitle(title: 'PEEK Operation of Stack',),
                  kDescriptionGap,
                  Description(description: 'এই অপারেশনের নাম এমনিতেই peek দেয়া। বুঝানো হচ্ছে যে এই অপারেশন দিয়ে স্ট্যাকের টপ বা একদম উপরের ভ্যালুটাকে peek/read করা হবে। সি++ এর টেমপ্লেট লাইব্রেরির built in function ব্যবহার করে স্ট্যাকের টপ ভ্যালুটাকে access করা যায়।',),
                  kDescriptionGap,
                  Description(description: 'int topValue = myStack.top();',),
                  kDescriptionGap,
                  Description(description: 'উপরের কোডে top() ফাংশনটি স্ট্যাকের সবার উপরের পজিশনের ভ্যালুটা রিটার্ন করবে। ',),
                  kDescriptionGap,
                  Description(description: 'C programming এর মাধ্যমে স্ট্যাকের টপ পজিশনের ভ্যালু প্রিন্ট করার জন্য নিচের user defined function দিয়ে করলে হবেঃ',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
                void peek()
    {
              if(top<0)
                 printf("Stack is Empty!\n");
              else
                 printf("%d\n", myStack[top]);
    }
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'POP Operation of Stack',),
                  kDescriptionGap,
                  Description(description: 'Stack এর top position এ থাকা ভ্যালুটাকে রিমুভ করার প্রকৃয়াকে বলা হয় POP. C++ এর STL এর সাহায্যে pop করা যায় খুব সহজেইঃ',),
                  kDescriptionGap,
                  Description(description: 'myStack.pop();',),
                  kDescriptionGap,
                  Description(description: 'উপরের কোড এক্সিকিউশনের পর তুমি এখন myStack.top(); এই ফাংশনটা এক্সিকিউট করলে দেখবে আগে টপের ভ্যালুটা এখন আর নাই। টপের নিচে যেই ভ্যালু ছিল সেটাই এই অবস্থায় এখন টপ ভ্যালু।',),
                  kDescriptionGap,
                  Description(description: 'সি প্রােগ্রাম দিয়ে ফাংশনটা লিখে ফেলা যায় এভাবেঃ',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
    void pop()
    {
              if(top<0)
                 printf("Stack is empty! Cannot POP any value!\n");
              else
                 top--;
    }
                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'Array/Stack থেকে কিন্তু সত্যিকারার্থে টপ ভ্যালুটা মুছে দেয়া হয়নি। বরং আমরা যেই ভ্যারিয়েবল দিয়ে আমাদের ভ্যালুর সংখ্যা হিসাব রাখছিলাম তার মান এক কমিয়ে দিলাম। ধরো স্ট্যাকের ৩ নাম্বার ইন্ডেক্সে (top=3) মান আছে ২৫। এই অবস্থায় pop() কল দেয়া হল। তখন myStack[3] তে ২৫ ঠিকই আছে কিন্তু top এর মান কমে দাঁড়িয়েছে ২। এখন যদি আবার push(57) ফাংশন কল করা হয় তখন top এর মান ১ বেড়ে হবে ৩। myStack[3] এর মানটা রিপ্লেস হয়ে যাবে নতুন ভ্যালু 57 দ্বারা।',),
                  kDescriptionGap,
                  Description(description: 'pop() function এর শুরুতেই একটা চেক রাখা হয়েছে top এর মান শূণ্যের চেয়ে কম কিনা। top এর মান শূণ্যের চেয়ে কম হবার অর্থ হচ্ছে স্ট্যাকে কোন ডেটা নাই। top এর মান 0 হবার মানে হচ্ছে। স্ট্যাকে ১ টা ডেটা আছে, যাকে পাওয়া যাবে myStack[0] তে। Stack এ কোন ভ্যালু নাই, কিন্তু pop করে ভ্যালুকে রিমুভ করার চেষ্টা করা হলে বা peek/read করার চেষ্টা করা হলে উদ্ভুত পরিস্থিতিতে বলা হয় stack underflow.',),
                  kTitleGap,
                  TileButton(iconData: Icons.play_arrow, buttontitle: 'Bracket Balancing with Stack', ID: 'bracket',),
                  kTitleGap,
                  DataTitle(title: 'Complexity of Stack Operations',),
                  kDescriptionGap,
                  Description(description: '* push() – O(1)',),
                  Description(description: '* pop() – O(1)',),
                  Description(description: '* peek() – O(1)',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
  #include<stdio.h>
#define stackSize 3

int myStack[stackSize], top = -1;

void push(int value)
{
    if(top>=stackSize-1)
              printf("Stack is full!\n");
    else
    {
              printf("PUSH: %d\n", value);
              myStack[++top] = value;
    }

}

void peek()
{
    if(top<0)
              printf("Stack Underflow!\n");
    else
              printf("%d\n", myStack[top]);
}

void pop()
{
    if(top<0)
              printf("Stack underflow!\n");
    else
    {
              printf("Popped %d, from Stack\n", myStack[top]);
              top--;
    }

}

void displayStack()
{
    printf("\nPrint the full stack from TOP to BOTTOM:\n");
    for(int i = top; i>=0; i--)
              printf("%d\n",myStack[i]);
}

int main()
{

    push(5);
    push(90);
    push(12);

    displayStack();

    pop();

    displayStack();

    printf("\nTop value of this Stack:   ");
    peek();


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
            BannerADS(),
          ],
        ),
      ),
    );
  }
}
