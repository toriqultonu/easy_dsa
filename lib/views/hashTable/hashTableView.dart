import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:easy_dsa/model/banner_ads.dart';
import 'package:easy_dsa/model/constant.dart';
import 'package:easy_dsa/widgets/appBar.dart';
import 'package:easy_dsa/widgets/description.dart';
import 'package:easy_dsa/widgets/image_data.dart';
import 'package:easy_dsa/widgets/navigation_drawer.dart';
import 'package:easy_dsa/widgets/title.dart';
import 'package:flutter/material.dart';

class HashTable extends StatefulWidget {
  static String id = 'hashtable';

  @override
  _HashTableState createState() => _HashTableState();
}

class _HashTableState extends State<HashTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kAppBarIconColor),
        backgroundColor: kPrimaryThemeColor3,
        title: CustomAppBar(
          str1: 'হ্যাশ ',
          str2: 'টেবিল',
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
                  Description(description: 'হ্যাশ টেবিল হচ্ছে একটি বিশেষ ডেটা স্ট্রাকচার যার মাধ্যমে আমরা কী-ভ্যালু পেয়ার হিসেবে ডেটা স্টোর করতে পারি। এটি অনেকটা অ্যারের মত ফরম্যাটে কাজ করে, আমরা প্রতিটা ইলিমেন্টকে তার ইনডেক্স এর মাধ্যমে এক্সেস করতে পারি। পার্থক্য হচ্ছে হ্যাশ টেবিলে আমরা ইনডেক্স হিসেবে ইন্টেজার ছাড়াও অন্যান্য ডেটা টাইপ (স্ট্রিং, কাস্টম অব্জেক্ট ইত্যাদি) ব্যবহার করতে পারি।',),
                  kTitleGap,
                  DataTitle(title: 'Hashing :',),
                  kDescriptionGap,
                  Description(description: 'হ্যাশ টেবিলের ইনডেক্স বের করার জন্য বিভিন্ন উপায় আছে, এদেরকে হ্যাশিং টেকনিক বা হ্যাশিং বলা হয়। মনে কর আমরা কিছু শিক্ষার্থীর রেজিস্ট্রেশন নম্বর এর প্রেক্ষিতে নাম স্টোর করতে চাই। অর্থাৎ, কী হচ্ছে রেজিস্ট্রেশন নম্বর এবং ভ্যালু হচ্ছে শিক্ষার্থীর নাম। ধরা যাক প্রতিটা রেজিস্ট্রেশন নম্বর 10 ডিজিটের। এখন, আমাদের যদি জানা না থাকে যে রেজিস্ট্রেশন নম্বর কত থেকে শুরু এবং কত তে শেষ, তাহলে আমাদের 10 ডিজিটের সকল সংখ্যার জন্য একটি টেবিল তৈরি করতে হবে যার সাইজ হবে 10¹⁰। এটি প্রায় অসম্ভব বেপার।',),
                  kDescriptionGap,
                  Description(description: 'এখন যদি আমাদের বলা হয়, সব মিলিয়ে 10 জন শিক্ষার্থীর ডেটা স্টোর করতে হবে, তাহলে আমাদের কাজ অনেক সহজ হয়ে যায়। প্রথম 10 টা 10 ডিজিট নিলেই কাজ হয়ে যাচ্ছে। কিন্তু যদি বলা হয় শিক্ষার্থীদের রেজিস্ট্রেশন নম্বর গুলো কোনো সিরিয়াল মেনে চলে না তাহলে কি হবে? 0000000000 থেকে 9999999999 পর্যন্ত যেকোনো সংখ্যা রেজিস্ট্রেশন নম্বর হতে পারে। আমরা কিন্তু আবার আগের জায়গায় পৌঁছে গেলাম।',),
                  kDescriptionGap,
                  Description(description: 'তাহলে উপায় কি? উপায় হল হ্যাশিং। প্রতিটা রেজিস্ট্রেশন নম্বরকে আমরা এমন ভাবে ম্যাপিং করব যাতে 0 থেকে 9 এর মধ্যে আমরা এদেরকে রাখতে পারি। একটি পদ্ধতি হল আমরা রেজিস্ট্রেশন নম্বরের প্রতিটা ডিজিটকে যোগ করে 10 দিয়ে মডুলো করতে পারি। যেই ভ্যালু টা আমরা পাচ্ছি সেইটাই হচ্ছে হ্যাশ ভ্যালু। এই ভ্যালুটা সবসময় 0–9 এর মধ্যে থাকবে। তাহলে আমরা মাত্র 10 টি স্থান ব্যাবহার করেই রেজিস্ট্রেশন নম্বরটি স্টোর করতে পারবো।',),
                  kDescriptionGap,
                  Description(description: 'hash(1223583790) = (1+2+2+3+5+8+3+7+9+0) % 10 = 40 % 10 = 0',),
                  Description(description: 'hash(1223583790) = (1+2+2+3+5+8+3+7+9+0) % 10 = 40 % 10 = 0',),
                  Description(description: 'hash(9991305612) = (9+9+9+1+3+0+5+6+1+4) % 10 = 47 % 10 = 7',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/hashtable/hashtable1.png',),
                  kTitleGap,
                  Description(description: 'হ্যাশিং করার জন্য বিভিন্ন পদ্ধতি রয়েছে। এদের মধ্যে উল্লেখযোগ্য হল ট্রানকেশন, ফোল্ডিং, মডুলার অ্যারিথমেটিক ইত্যাদি। আমাদের ব্যবহার করা মেথডটি মডুলার অ্যারিথমেটিকের মধ্যে পরে।',),
                  kTitleGap,
                  DataTitle(title: 'Hash Function :',),
                  kDescriptionGap,
                  Description(description: 'হ্যাশিং টেকনিক ইমপ্লিমেন্ট করার ফাংশনকেই হ্যাশ ফাংশন বলে। এটি একটি কী ইনপুট হিসেবে নিবে এবং একটি হ্যাশ ভ্যালু রিটার্ন করবে।হ্যাশিং টেকনিক ইমপ্লিমেন্ট করার ফাংশনকেই হ্যাশ ফাংশন বলে। এটি একটি কী ইনপুট হিসেবে নিবে এবং একটি হ্যাশ ভ্যালু রিটার্ন করবে।',),
                  kDescriptionGap,
                  Description(description: 'int hash_value = hashFunction(key)',),
                  kDescriptionGap,
                  Description(description: 'হ্যাশ ফাংশন ইমপ্লিমেন্ট করার সময় নিচের বিষয়গুলো খেয়াল রাখতে হবে,',),
                  Description(description: '১। হ্যাশ ভ্যালু নির্ণয় করার প্রক্রিয়াটি সহজ হতে হবে',),
                  Description(description: '২। কলিশন কম হবে',),
                  kTitleGap,
                  DataTitle(title: 'Collision :',),
                  kDescriptionGap,
                  Description(description: 'আগের উদাহরণটিতে আমরা কিছু শিক্ষার্থীর রেজিস্ট্রেশন নম্বর এর প্রেক্ষিতে নাম স্টোর করেছি। আমরা হ্যাশ ভ্যালু বের করার জন্য যে টেকনিক ব্যাবহার করেছি তা সবসময় ইউনিক ভ্যালু দেয় না। কখনো কখনো একাধিক কী এর জন্যে একই হ্যাশ ভ্যালু আসতে পারে। যেমন :' ,),
                  kDescriptionGap,
                  Description(description: 'hash(1223583794) = (1+2+2+3+5+8+3+7+9+4) % 10 = 44 % 10 = 4',),
                  Description(description: 'hash(5904053170) = (5+9+0+4+0+5+3+1+7+0) % 10 = 34 % 10 = 4',),
                  kDescriptionGap,
                  Description(description: 'আর এটি শুধু মাত্র আমাদের ব্যাবহার করা হ্যাশিং পদ্ধতির জন্যে নয়, অন্য যেকোনো পদ্ধতিতেও একই সমস্যা হতে পারে। এ সমস্যাটিকে বলা হয় কলিশন। বাস্তবে কোনো হ্যাশিং টেকনিকই সম্পূর্ণভাবে কলিশন মুক্ত নয়।',),
                  kTitleGap,
                  DataTitle(title: 'Collision Resolution :',),
                  kDescriptionGap,
                  Description(description: 'কলিশন সমস্যা সমাধান করার জন্য বিভিন্ন পদ্ধতি আছে। এদের সাধারণত 2 ভাগে ভাগ করা যায়।',),
                  kDescriptionGap,
                  Description(description: '১। ওপেন হ্যাশিং',),
                  Description(description: '২। ক্লোজড হ্যাশিং',),
                  kDescriptionGap,
                  Description(description: 'টিউটোরিয়ালটিকে ছোট রাখতে এই পর্বে আমরা শুধু ওপেন হ্যাশিং পদ্ধতিটি দেখব। আগামী পর্বে আমরা ক্লোজড হ্যাশিং নিয়ে আলোচনা করব।',),
                  kTitleGap,
                  DataTitle(title: 'Open Hashing (Separate Chaining):',),
                  kDescriptionGap,
                  Description(description: 'কলিশন রেজুলশন করার সবথেকে কমন পদ্ধতি হচ্ছে সেপারেট চেইনিং বা ওপেন হ্যাশিং। এ ক্ষেত্রে আমরা একটি লিঙ্কড লিস্ট এর অ্যারে ব্যাবহার করতে পারি। দুটি কী এর হ্যাশ ভ্যালু একই হলে তাদেরকে আমরা একই ইনডেক্সে রাখবো। অ্যারের প্রতিটা আইটেম একেকটি লিঙ্কড লিস্ট হওয়ায়, আমরা একই ইনডেক্সে একাধিক ডেটা স্টোর করতে পারব।',),
                  kTitleGap,
                  ImageViewData(imageLink: 'Images/hashtable/hashtable2.png',),
                  kTitleGap,
                  Description(description: 'এ স্ট্রাকচারে একটি ডেটা খুঁজে বের করার কমপ্লেক্সিটি হবে সেই ডেটা যে ইনডেক্সে আছে সেই ইনডেক্সের লিস্ট এর লেংথ এর সমান। সব ডেটা সুষ্ঠু ভাবে বণ্টন করতে পারলে প্রত্যেকটা লিঙ্কড লিস্ট এর লেংথ সমান হবে, যা একটি ধ্রুবক। অতএব একটি ডেটা খুঁজে বের করার কমপ্লেক্সিটি হবে O(1) [length of list << n]',),
                  kTitleGap,
                  DataTitle(title: 'Implementation:',),
                  kDescriptionGap,
                  Description(description: 'হ্যাশ টেবিল ইমপ্লিমেন্টেশন এর জন্যে আমরা C++ এর টু ডাইমেনশনাল ভেক্টর ব্যবহার করব। তোমরা যারা raw লিঙ্কড লিস্ট ইমপ্লিমেন্ট করতে চাও তারা এই কোডটি দেখতে পারো।',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
#include<bits/stdc++.h>

using namespace std;

//typedef
typedef long double ld;
typedef long long ll;
typedef unsigned long ul;
typedef unsigned long long ull;
typedef vector<int> vi;
typedef vector<ll> vll;
typedef pair<int,int> pii;
typedef pair<ll,ll> pll;
typedef pair<ld,ld> pld;
typedef queue<int> qi;
typedef priority_queue<int> pqi;
typedef priority_queue< int, vector<int> , greater<int> > rpqi;
typedef stack<int> si;
typedef vector <pii> vpii;

//short names
#define all(ar) ar.begin(), ar.end()
#define pb push_back
#define ppb pop_back
#define mp make_pair
#define ff first
#define ss second
#define pf printf
#define sf scanf
#define um unordered_map
#define rm remove

//bitwise
#define BIT(n) (1<<(n))
#define AND(a,b) ((a) & (b))
#define OR(a,b) ((a) | (b))
#define XOR(a,b) ((a) ^ (b))
#define sqr(x) ((x) * (x))

//loop
#define FOR(i,n) for (i = 0; i < n; i++)
#define DFOR(n,i) for (i = n; i >= 0; i--)
#define RFOR(a,b,i) for (i = a; i < = b; i++)
#define DRFOR(a,b,i) for (i = a ; i >= 0; i--)
#define RRFOR(a,b,i,j) for(i=a; i<=b; i+=j);
#define DRRFOR(a,b,i,j) for(i=a; i>=b; i-=j);
#define foreach(it, ar) for ( typeof(ar.begin()) it = ar.begin(); it != ar.end(); it++ )
#define CLR(x) memset(x,0,sizeof(x))
#define SET(ar,n, val) for(int i=0; i<n; i++) ar[i]=val;

//constants
#define PI 3.1415926535897932385
#define INF 1000111222
#define eps 1e-7
#define maxN 10000000
#define MOD 1000000007
#define inf 1<<30

//debug
#define watch(x) cout<<(#x)<<" is "<<(x)<<endl
#define bin(x) cout<<(#x)<<" "<<(x)<<" = "<<bitset<16>(x)<<endl
#define LINE puts("\n---------------------------------------------\n")

//structure to define a single item
struct item
{
    int key;
    string name;
    item *next;

    item(int _key, string _name)
    {
              key  = _key;
              name = _name;
              next = NULL;
    }
};

item** hashTable; //array of linked list

void init()
{
    int i;
    hashTable = new item*[11]; //11 hashValues
    FOR(i,11)
              hashTable[i] = NULL; //initialize to null
}

//determines the hashValue for a specific key
int hashFunction(int key)
{
    int hashValue=0;

    while(key>0)
    {
              hashValue+=key%10; //add digits one by one
              key=key/10;
    }

    return hashValue%11; //return the hashValue modulo by 11
}


//inserts a single item in the hashTable
void insertItem(int key, string name)
{
    int hashValue = hashFunction(key);
    item *head = hashTable[hashValue];

    if(head == NULL)
              hashTable[hashValue] = new item(key, name); //if the list is empty insert at the first position
    else
    {
              while(head->next != NULL) //if not then traverse to the last position
                  head=head->next;

              head->next = new item(key, name);
    }
}

//searches for a specific key in the hashTable
bool searchItem(int key)
{
    int i,hashValue = hashFunction(key);
    item *head = hashTable[hashValue];

    while(head!=NULL) //iterate over the linked list to find the item
    {
              if(head->key == key)
                  return true;
              head = head->next;
    }

    return false;
}

//deletes an item with  specific key
bool deleteItem(int key)
{
    int hashValue = hashFunction(key);
    item *head = hashTable[hashValue];
    item *prev = NULL;

    if(head == NULL) //if the list is empty return false
              return false;
    else if(head->key == key) // if the first value matches update the root node
    {
              hashTable[hashValue]=head->next;
              delete head;
              return true;
    }
    else
    {
              while(head!=NULL)  //iterate over the list and delete if matches
              {
                  prev = head;
                  head = head->next;
                  if(head->key == key)
                  {
                      prev->next = head->next;
                      delete head;
                      return true;
                  }
              }
    }


    return false;
}

//prints the complete table
void printTable()
{
    puts("\n");
    int i,j;
    FOR(i,11)
    {
              cout<<i<<" --> ";
              item* head = hashTable[i];

              while(head != NULL)
              {
                  cout<<head->name<<"-->";
                  head = head->next;
              }

              puts("");
    }
    puts("\n");
}

int main()
{
//    freopen("input.txt", "r", stdin);
//    freopen("output.txt", "w", stdout);

    init(); //initializes the hashTable

    //insert items
    insertItem(123456789,"abcgdn");
    insertItem(123456789,"asdnkj");
    insertItem(123456789,"msjbcs");
    insertItem(163256789,"kdmsds");
    insertItem(121726789,"dkjnaa");
    insertItem(181726729,"kjcskd");
    insertItem(123454129,"shdbsd");

    //print complete table
    printTable();

    //look for a specific item
    if(searchItem(163256789))
              cout<<"Found!!"<<endl;
    else
              cout<<"Not Found!"<<endl;

    if(searchItem(163336788))
              cout<<"Found!!"<<endl;
    else
              cout<<"Not Found!"<<endl;

    //delete an item and print table
    deleteItem(121726789);
    printTable();

    return 0;
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  DataTitle(title: 'Single Item Structure :',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
struct item{    
    int key;    
    string name;     
    item(int _key, string _name)    
    {        
              key = _key;        
              name = _name;    
    }
};

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'আমাদের স্ট্রাকচারে একটি কী এবং একটি ভ্যালু থাকবে। ইনিশিয়ালাইজেশন এর জন্যে আমরা একটি কন্সট্রাক্টর তৈরি করেছি।',),
                  kTitleGap,
                  DataTitle(title: 'Hash Table Declaration :',),
                  kDescriptionGap,
                  Description(description: 'vector<item> hashTable[11];  //11 hashValues',),
                  kTitleGap,
                  DataTitle(title: 'Hash Function:',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
int hashFunction(int key){    
    int hashValue=0;     
    while(key>0)    
    {        
              hashValue+=key%10; //add digits one by one        
              key=key/10;    
    }     
    return hashValue%11; //return the hashValue modulo by 11
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'হ্যাশ ফাংশনটিতে আমরা আমাদের কি এর প্রত্যেকটি ডিজিট যোগ করে তাকে 11 দিয়ে মডুলো করেছি।',),
                  kTitleGap,
                  DataTitle(title: 'Insert Function :',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
void insertItem(int key, string name){    
    int hashValue = hashFunction(key); 
    hashTable[hashValue].push_back(item(key,name));
}


                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'প্রথমে আমরা কী এর জন্য হ্যাশ ভ্যালু নির্ণয় করেছি। হ্যাশভ্যালু অনুযায়ী ভেক্টর এক্সেস করে তাতে আমাদের আইটেম পুশ করেছি। ভেক্টর এর ক্ষেত্রে push_back() করলে আইটেমটি সবার শেষে গিয়ে যুক্ত হবে।',),
                  kTitleGap,
                  DataTitle(title: 'Search Function :',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 150,
                    child: DartCodeViewer(r'''
bool searchItem(int key){   
    int i,hashValue = hashFunction(key);
    for(i=0; i<hashTable[hashValue].size(); i++)
               if(hashTable[hashValue][i].key == key)            
                   return true;    
    return false;
}


                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'সার্চ করার জন্য আমরা আগে হ্যাশভালু বের করে নিয়েছি। এইবার হ্যাশভ্যালু অনুযায়ী ভেক্টরটিকে ট্রাভারস করে আমাদের ইলিমেন্টটিকে খুঁজেছি।',),
                  kTitleGap,
                  DataTitle(title: 'Delete Function :',),
                  kTitleGap,
                  Container(
                    margin: kSidePadding,
                    height: 200,
                    child: DartCodeViewer(r'''
bool deleteItem(int key){    
    int i,hashValue = hashFunction(key);
    for(i=0; hashTable[hashValue].size(); i++) {       
              if(hashTable[hashValue][i].key == key) {            
               hashTable[hashValue].erase(hashTable[hashValue].begin()+i);            
               return true;        
              }
     }     
     return false;
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
                  Description(description: 'ডিলিট করার জন্য আমরা অনেকটা সার্চ ফাংশন এর মতই কাজ করেছি। শুধু এই ক্ষেত্রে আমরা ইলিমেন্টটি খুঁজে পেলে vector :: erase() ফাংশনের মাধ্যমে তা ডিলিট করে দিয়েছি।',),
                  kTitleGap,
                  DataTitle(title: 'Full Source Code:',),
                  kDescriptionGap,
                  Container(
                    margin: kSidePadding,
                    height: 500,
                    child: DartCodeViewer(r'''
#include<bits/stdc++.h>

using namespace std;

//typedef
typedef long double ld;
typedef long long ll;
typedef unsigned long ul;
typedef unsigned long long ull;
typedef vector<int> vi;
typedef vector<ll> vll;
typedef pair<int,int> pii;
typedef pair<ll,ll> pll;
typedef pair<ld,ld> pld;
typedef queue<int> qi;
typedef priority_queue<int> pqi;
typedef priority_queue< int, vector<int> , greater<int> > rpqi;
typedef stack<int> si;
typedef vector <pii> vpii;

//short names
#define all(ar) ar.begin(), ar.end()
#define pb push_back
#define ppb pop_back
#define mp make_pair
#define ff first
#define ss second
#define pf printf
#define sf scanf
#define um unordered_map
#define rm remove

//bitwise
#define BIT(n) (1<<(n))
#define AND(a,b) ((a) & (b))
#define OR(a,b) ((a) | (b))
#define XOR(a,b) ((a) ^ (b))
#define sqr(x) ((x) * (x))

//loop
#define FOR(i,n) for (i = 0; i < n; i++)
#define DFOR(n,i) for (i = n; i >= 0; i--)
#define RFOR(a,b,i) for (i = a; i < = b; i++)
#define DRFOR(a,b,i) for (i = a ; i >= 0; i--)
#define RRFOR(a,b,i,j) for(i=a; i<=b; i+=j);
#define DRRFOR(a,b,i,j) for(i=a; i>=b; i-=j);
#define foreach(it, ar) for ( typeof(ar.begin()) it = ar.begin(); it != ar.end(); it++ )
#define CLR(x) memset(x,0,sizeof(x))
#define SET(ar,n, val) for(int i=0; i<n; i++) ar[i]=val;

//constants
#define PI 3.1415926535897932385
#define INF 1000111222
#define eps 1e-7
#define maxN 10000000
#define MOD 1000000007
#define inf 1<<30

//debug
#define watch(x) cout<<(#x)<<" is "<<(x)<<endl
#define bin(x) cout<<(#x)<<" "<<(x)<<" = "<<bitset<16>(x)<<endl
#define LINE puts("\n---------------------------------------------\n")

//structure to define a single item
struct item
{
    int key;
    string name;

    item(int _key, string _name)
    {
              key = _key;
              name = _name;
    }
};

vector<item> hashTable[11];  //11 hashValues


//determines the hashValue for a specific key
int hashFunction(int key)
{
    int hashValue=0;

    while(key>0)
    {
              hashValue+=key%10; //add digits one by one
              key=key/10;
    }

    return hashValue%11; //return the hashValue modulo by 11
}


//inserts a single item in the hashTable
void insertItem(int key, string name)
{
    int hashValue = hashFunction(key);
    hashTable[hashValue].pb(item(key,name));
}

//searches for a specific key in the hashTable
bool searchItem(int key)
{
    int i,hashValue = hashFunction(key);

    FOR(i,hashTable[hashValue].size())
              if(hashTable[hashValue][i].key == key)
                  return true;

    return false;
}

//deletes an item with  specific key
bool deleteItem(int key)
{
    int i,hashValue = hashFunction(key);

    FOR(i,hashTable[hashValue].size())
              if(hashTable[hashValue][i].key == key)
              {
                  hashTable[hashValue].erase(hashTable[hashValue].begin()+i);
                  return true;
              }

    return false;
}

//prints the complete table
void printTable()
{
    puts("\n");
    int i,j;
    FOR(i,11)
    {
              cout<<i<<" --> ";
              FOR(j, hashTable[i].size())
              {
                  if(j!=0)
                      cout<<" ->";
                  cout<<hashTable[i][j].name;
              }
              puts("");
    }
    puts("\n");
}

//clears complete Table
void clearTable()
{
    int i,j;
    FOR(i,11)
              hashTable[i].clear();
}

int main()
{
//    freopen("input.txt", "r", stdin);
//    freopen("output.txt", "w", stdout);

    //insert items
    insertItem(123456789,"abcgdn");
    insertItem(123456789,"asdnkj");
    insertItem(123456789,"msjbcs");
    insertItem(163256789,"kdmsds");
    insertItem(121726789,"dkjnaa");
    insertItem(121726789,"kjcskd");
    insertItem(123454129,"shdbsd");

    //print complete table
    printTable();

    //look for a specific item
    if(searchItem(163256789))
              cout<<"Found!!"<<endl;
    else
              cout<<"Not Found!"<<endl;

    //delete an item and print table
    deleteItem(163256789);
    printTable();

    //clear the table
    clearTable();
    printTable();


    return 0;
}

                     ''',
                      //backgroundColor: kSecondaryThemeColor2,
                      stringStyle: TextStyle(fontSize: 16),),
                  ),
                  kTitleGap,
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
