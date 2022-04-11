import 'package:astra/gallery/detailsreport.dart';
import 'package:astra/gallery/search.dart';
import 'package:flutter/material.dart';
import 'package:astra/gallery/indicatorpercent.dart';

class gallery extends StatefulWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  State<gallery> createState() => _galleryState();
}

class _galleryState extends State<gallery> {
  List<String> courseList = [
    "220401 Daily Report Gojek",
    "220401 Weekly Report Gojek",
    "220401 Monthly Report Gojek",
    "220401 One Time Report Gojek",
    "220402 Daily Report Gojek",
    "220408 Weekly Report Gojek",
    "220501 Monthly Report Gojek",
    "230401 One Time Report Gojek",
    "220403 Daily Report Gojek",
    "220415 Weekly Report Gojek",
    "220601 Monthly Report Gojek",
    "240401 One Time Report Gojek",
  ];

  @override
  Widget build(BuildContext context) {
    List<String> list = List.generate(28, (index) => "${index + 1}");
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
        body: Container(
            child: Column(children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(3),
            child: Column(
              children: const [AnimatedSearchBar()],
            ),
          ),
          Divider(
            height: 5,
            // thickness: 3,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: courseList.length,
              itemBuilder: (context, index) {
                return CourseListItem(courseName: courseList[index]);
              },
              //separatorBuilder: (context, index) => const Divider(
              // color: Color(0xFFF13929),
              // thickness: 1,
              // indent: 1,
              // endIndent: 1,
            ),
          )
        ])));
  }
}
