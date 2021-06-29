import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class DeQueue extends StatelessWidget {
  static String id = 'dequeue';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'DeQueue',
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
            DataTitle(title: 'Deque বা Deuble-ended Queue',),
            kTitleGap,
            Description(description: 'তােমরা জেনে গেছ Queue এর ব্যাসিক ধারণা। FIFO - First in First Out এই মূলনীতির উপর ভিত্তি করে কিউ ডেটা স্ট্রাকচার কাজ করে। তােমরা জানাে যে একটা কিউতে নতুন কোন ডেটা ইনসার্ট করতে হলে কিউয়ের শেষে ইনসার্ট করতে হয়। আর কোন ডেটা বের করে নিতে হলে বা প্রসেস করতে হলে কিউয়ের শুরু থেকে বের করতে হয়।',),
            kDescriptionGap,
            Description(description: 'Double-end Queue এর ক্ষেত্রে উপরের কাজগুলা করা যায়, সাথে আরো বাড়তি কিছু সুবিধা পাওয়া যায়। নাম দেখেই বুঝা যাচ্ছে এই কিউয়ের বৈশিষ্ট্য। Deque ব্যবহার করে তুমি কিউয়ের শুরু ও শেষ দুই দিকেই ডেটা ইনসার্ট করতে পারবা এবং দুই দিক দিয়েই ডেটা বের করতে পারবা। C++ এর STL ব্যবহার করে খুব সহজে deque ইমপ্লিমেন্ট করা যায়। চাইলে একটু খাটাখাটনি করে সাধারণ অ্যারে দিয়েও এটা ইমপ্লিমেন্ট করতে পারাে।',),
            kDescriptionGap,
            Description(description: 'Deque এর কয়েকটা সাধারণ ফাংশনালিটি দেখব এই পোস্টেঃ',),
            kDescriptionGap,
            Description(description: '1. push_front() - কিউয়ের শুরুতে ডেটা ইনসার্ট করতে',),
            Description(description: '2. push_back() - কিয়ের শেষে ডেটা ইনসার্ট করতে',),
            Description(description: '3. pop_front() - কিউয়ের সামনে থেকে ডেটা pop করতে',),
            Description(description: '4. pop_back() - কিউয়ের শেষ থেকে ডেটা pop করতে',),
            Description(description: '5. front() - কিউয়ের সামনের ডেটা অ্যাক্সেস করতে',),
            Description(description: '6. back() - কিউয়ের শেষের ডেটা অ্যাক্সেস করতে',),
            Description(description: '7. clear() - কিউয়ের সকল ডেটা মুছে ফেলতে',),
            kDescriptionGap,
            Description(description: 'একটা প্রােগ্রাম লিখব যাতে উপরের ক্রম অনুসারে ডিকিউ দিয়ে এই অপারেশনগুলো সম্পন্ন করা যায়। অর্থাৎ, 1 ইনপুট দিলে push_front() কাজ করবে। 4 ইনপুট দিলে pop_back() করবে। অনুরূপ ভাবে 7 ইনপুট দিলে সকল ডেটা মুছে ফেলা হবে।',),
            kDescriptionGap,
            Description(description: 'কাজের সুবিধার্তে আরাে দুইটা নতুন অপশন যোগ করি। ৪ ইনপুট দিলে পুরো কিউটার আউটপুট দেখাবে। 9 ইনপুট দিলে প্রােগ্রাম exit করবে।',),
            kTitleGap,
            Container(
              margin: kSidePadding,
              height: 500,
              child: DartCodeViewer(r'''
#include<bits/stdc++.h>

using namespace std;

int main()
{
    int choise, data;
    deque<int> myDeque;
    deque<int>::iterator it;

    while(true)
    {
        cout<<"\n\nChoose anyone:\n";
        cout<<"1. push_front()\t2. push_back()\t3. pop_front()\t 4. pop_back()\n";
        cout<<"5. front()\t 6. back()\t 7. clear()\t 8. show all elements\t 9. exit\n\n";

        cin>>choise;
        if(choise==1)
        {
            cout<<"Enter an integer to push it front\n";
            cin>>data;
            myDeque.push_front(data);
        }
        else if(choise==2)
        {
            cout<<"Enter an integer to push it back\n";
            cin>>data;
            myDeque.push_back(data);
        }
        else if(choise==3)
        {
            if(!myDeque.empty())
                myDeque.pop_front();
            else
                cout<<"Deque is empty!\n";
        }
        else if(choise==4)
        {
            if(!myDeque.empty())
                myDeque.pop_back();
            else
                cout<<"Deque is empty!\n";
        }
        else if(choise==5)
        {
            cout<<"Top front element is: "<<myDeque.front();
        }
        else if(choise==6)
        {
            cout<<"Top back element is: "<<myDeque.back();
        }
        else if(choise==7)
        {
            myDeque.clear();
            cout<<"Deque is clear now!\n";
        }
        else if(choise==8)
        {
            if(!myDeque.empty())
            {
                cout<<endl<<"Full Deque is:\n";
                for(it=myDeque.begin(); it != myDeque.end(); it++)
                    cout<<*it<<endl;
                cout<<endl;
            }
            else
                cout<<"Deque is empty!\n";

        }
        else if(choise==9)
            break;
        else
            cout<<"Invalid input!\n";

    }


    return 0;
}
                    ''',
                //backgroundColor: kSecondaryThemeColor2,
                stringStyle: TextStyle(fontSize: 16),),
            ),
            kTitleGap,
            Description(description: 'কিউয়ের আগের পর্ব পড়ে বুঝে থাকলে এই পর্ব বুঝতে কোনই সমস্যা হবার কথা নয়। তাই প্রতিটা মেথডের বিস্তারিত আলােচনা আর করলাম না। আশা করি ডিকিউ (আসলে উচ্চারণটা হবে ডেক) বুঝা হয়ে গেছে। কোথাও কনফিউশন থাকলে কমেন্ট করতে ভুলাে না। ও হ্যাঁ! আরেকটা কথা... deque-কে অনেক সময় head-tail linked list-ও বলা হয়ে থাকে।',),
            kHeaderGap,

          ],
        ),
      ),
    );
  }
}
