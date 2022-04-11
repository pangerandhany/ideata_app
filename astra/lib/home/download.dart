import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:astra/gallery/detailsreport.dart';
import 'dart:math' as math;

class CourseListItem extends StatefulWidget {
  const CourseListItem({Key? key, required this.courseName}) : super(key: key);

  final String courseName;

  @override
  State<CourseListItem> createState() => _CourseListItemPage();
}

class _CourseListItemPage extends State<CourseListItem> {
  int downloadProgress = 0;

  bool isDownloadStarted = false;

  bool isDownloadFinish = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: CircleAvatar(
      radius: 24.5,
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      child: Column(children: [
        Visibility(
            visible: isDownloadStarted,
            child: CircularPercentIndicator(
              //backgroundColor: Color(0xFFF13929),
              radius: 24.5,
              lineWidth: 3.0,
              percent: (downloadProgress / 100),
              center: Text(
                "$downloadProgress%",
                style: const TextStyle(fontSize: 12, color: Colors.black),
              ),
              progressColor: Color(0xFFF13929),
            )),
        Visibility(
            visible: !isDownloadStarted,
            child: IconButton(
              icon: const Icon(Icons.download),
              color: isDownloadFinish
                  ? Color(0xFFF13929)
                  : Color.fromARGB(255, 109, 109, 109),
              onPressed: downloadCourse,
            ))
      ]),
    ));
  }

  void downloadCourse() async {
    isDownloadStarted = true;
    isDownloadFinish = false;
    downloadProgress = 0;
    setState(() {});

    //Download logic
    while (downloadProgress < 100) {
      // Get download progress
      downloadProgress += 10;
      setState(() {});
      if (downloadProgress == 100) {
        isDownloadFinish = true;
        isDownloadStarted = false;
        setState(() {});
        break;
      }
      await Future.delayed(const Duration(milliseconds: 500));
    }
  }
}
