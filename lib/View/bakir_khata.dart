import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jomakhoroch/Controller/baki_controller.dart';
import 'package:jomakhoroch/Model/contact.dart';
import 'package:jomakhoroch/View/contact_list.dart';
import 'package:jomakhoroch/View/report.dart';
import 'package:jomakhoroch/View/stock.dart';
import 'package:jomakhoroch/View/subs.dart';


class BakirKhata extends StatefulWidget {
   const BakirKhata({Key? key}) : super(key: key);

  @override
  _BakirKhataState createState() => _BakirKhataState();
}

class _BakirKhataState extends State<BakirKhata> {
  final BakiController bakiController = Get.put(BakiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('নতুন দেনাদার/পাওনাদার',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color:Colors.white),),
        icon: Icon(Icons.add),
        backgroundColor: Colors.teal[600],
        foregroundColor: Colors.white,
        onPressed: () {
          Get.to(ContactList(false, false));
        },
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('ট্যালী খাতা', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton(
              offset: Offset(0, 40),
              onSelected: (value) {
                if (value.toString() == 'pdf') {
                  Get.to(Subs());
                } else if (value.toString() == 'how') {
                  Get.to(Subs());
                } else if (value.toString() == 'faq') {
                  Get.to(Subs());
                } else {
                  Get.to(Stock());
                }
              },
              itemBuilder: (BuildContext context) {
                return [

                  PopupMenuItem(
                    value: 'pdf',
                    child: Row(
                      children: [
                        Icon(Icons.add_sharp, color: Colors.green),
                        Text('পিডিএফ রিপোর্ট'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'stock',
                    child: Row(
                      children: [
                        Icon(Icons.backpack, color: Colors.green),
                        Text('স্টক তালিকা'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'how',
                    child: Row(
                      children: [
                        Icon(Icons.account_box, color: Colors.green),
                        Text('কিভাবে ব্যবহার করবো'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'faq',
                    child: Row(
                      children: [
                        Icon(Icons.account_circle, color: Colors.green),
                        Text('সাধারণ জিজ্ঞাসা'),
                      ],
                    ),
                  ),

                ];
              }),
        ],
      ),
      body: SingleChildScrollView(
          child: Obx(
        () => (bakiController.isLoad.value)
            ? Center(child: CircularProgressIndicator(color: Colors.green))
            : Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('মোট বাকি  ' +
                                        '৳' +
                                        bakiController.totalBaki.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color:Colors.black),),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('মোট জমা  ' +
                                        '৳' +
                                        bakiController.totalJoma.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color:Colors.black),)
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(color: Colors.green),
                                  ),
                                  onPressed: () {
                                    Get.to(Report());
                                  },
                                  child: Text('রিপোর্ট দেখুন'),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            children: [

                              Expanded(
                                  flex: 1,
                                  child: Text(bakiController.bakiList.length
                                          .toString() +
                                      ' জন গ্রাহক')
                              ),
                              SizedBox(width: 5.0),
                              Expanded(
                                  flex: 2,
                                  child: Text('পিডিএফ',
                                      style: TextStyle(color: Colors.green))
                              ),
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.search),
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.sort),
                                  )
                              ),


                            ],
                          ),
                        ),
                        Divider(),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: bakiController.bakiList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10),
                              child: ListTile(
                                leading:
                                Container(
                                  // height: 60,
                                  // width: 60,
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('images/cont.png'),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    color: Colors.grey[100],
                                    border: Border.all(color: Colors.black),
                                  ),
                                ),

                                title: Text(
                                    bakiController.bakiList[index].account
                                ),




                                trailing: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(
                                        '৳ ' +
                                            bakiController
                                                .bakiList[index].amount,
                                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)
                                    ),

                                    Text('বাকি আছে', style: TextStyle(color: Colors.grey[400])),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 80.0),
                      ],
                    ),
                  ),
                ],
              ),
      )),
    );
  }
}
