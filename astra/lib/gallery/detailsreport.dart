import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  //final int courseList;

  //DetailPage(this.courseList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xFFF13929),
          elevation: 0.0,
          centerTitle: false,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('images/logo gojek1.png', scale: 24),
                Image.asset('images/Astramaya Logo.png', scale: 22),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('The Detail Page'),
      ),
    );
  }
}
