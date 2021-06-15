import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'becha_bikri.dart';

class Marketing extends StatefulWidget {
  const Marketing({Key? key}) : super(key: key);

  @override
  _MarketingState createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.0),
        child: AppBar(
          backgroundColor: Colors.teal[600],
          title: Text('মার্কেটিং',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: false,
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
              //height: 210,
              height: 207,
              child: Image.asset("images/market.jpg")
          ),

          SizedBox(
            height: 10,
          ),

          InkWell(
            onTap: () {
              Get.to(BechaBikri());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[800]!.withOpacity(0.2), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              width: 330,
              height: 80,
              child: Row(

                children: [
                  Container(
                    width: 70,
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset("images/msg.png")),
                  ),
                  Container(
                    width: 220,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("মেসেজিং",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.teal[600],),textAlign: TextAlign.justify),
                        Text("মার্কেটিং হবে স্মাট উপায়ে",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Image.asset("images/go.png"),
                        )
                    ),
                  ),

                ],
              ),
            ),
          ),



          SizedBox(
            height: 15,
          ),




          InkWell(
            onTap: () {
              Get.to(BechaBikri());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[800]!.withOpacity(0.2), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              width: 330,
              height: 80,
              child: Row(

                children: [
                  Container(
                    width: 70,
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset("images/fb.png")),
                  ),
                  Container(
                    width: 220,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("ফেইসবুক মার্কেটিং",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.teal[600],),textAlign: TextAlign.justify),
                        Text("মার্কেটিং হবে স্মাট উপায়ে",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Image.asset("images/go.png"),
                        )),
                  ),

                ],
              ),
            ),
          ),


          SizedBox(
            height: 15,
          ),

          InkWell(
            onTap: () {
              Get.to(BechaBikri());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[800]!.withOpacity(0.2), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              width: 330,
              height: 80,
              child: Row(

                children: [
                  Container(
                    width: 70,
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset("images/msg.png")),
                  ),
                  Container(
                    width: 220,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("ফেইসবুক মার্কেটিং",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.teal[600],),textAlign: TextAlign.justify),
                        Text("মার্কেটিং হবে স্মাট উপায়ে",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Image.asset("images/go.png"),
                        )),
                  ),

                ],
              ),
            ),
          ),


          SizedBox(
            height: 15,
          ),


          InkWell(
            onTap: () {
              Get.to(BechaBikri());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[800]!.withOpacity(0.2), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              width: 330,
              height: 80,
              child: Row(

                children: [

                  Container(
                    width: 70,
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset("images/msg.png")),
                  ),

                  Container(
                    width: 220,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("ফেইসবুক মার্কেটিং",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.teal[600],),textAlign: TextAlign.justify),
                        Text("মার্কেটিং হবে স্মাট উপায়ে",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      ],
                    ),
                  ),

                  Container(
                    width: 40,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Image.asset("images/go.png"),
                        )
                    ),
                  ),


                ],
              ),
            ),
          ),

//

        ],
      ),


    );
  }
}
