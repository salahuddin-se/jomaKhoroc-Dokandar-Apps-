import 'package:flutter/material.dart';

class InBox extends StatefulWidget {
  const InBox({Key? key}) : super(key: key);
  @override
  _MarketingState createState() => _MarketingState();
}

class _MarketingState extends State<InBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.0),
        child: AppBar(
          backgroundColor: Colors.teal[600],
          title: Text('মতামত ও পরামর্শ',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: false,
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('মতামত ও পরামর্শ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24))),
        ],
      ),


    );
  }
}
