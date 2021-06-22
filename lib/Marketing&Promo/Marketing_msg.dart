import 'package:flutter/material.dart';


class MarketingSMS extends StatefulWidget {
  const MarketingSMS({Key? key}) : super(key: key);

  @override
  _MarketingState createState() => _MarketingState();
}

class _MarketingState extends State<MarketingSMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.0),
        child: AppBar(
          backgroundColor: Colors.teal[600],
          title: Text('এসএমএস মার্কেটিং',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: false,
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 20.0,),

          Text("কিভাবে এসএমএস মার্কেটিং করবেন?",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
          Divider(
            height: 40,
            thickness: 2,
            color: Colors.black,
            indent: 32,
            endIndent: 32,
          ),
          Text("১। মার্কেটিং এর একটি ইউনিক নাম দিন।\n",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal,color: Colors.black,),),
          Text("২। এসএমএস সিলেক্ট করুন।\n",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal,color: Colors.black,),),
          Text("৩। যাদের পাঠাবেন তাদের সিলেক্ট করুন।\n",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal,color: Colors.black,),),
          Text("৪। অবশেষে মার্কেটিং শুরু করুন।\n",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal,color: Colors.black,),),
        ],
      ),


    );
  }
}
