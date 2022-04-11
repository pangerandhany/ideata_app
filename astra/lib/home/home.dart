import 'package:astra/gallery/detailsreport.dart';
import 'package:flutter/material.dart';
import 'package:astra/home/download.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> courseList = [
    " ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: ListView.builder(
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          return CourseListItem(courseName: courseList[index]);
        },
      ),
    );
  }
}
