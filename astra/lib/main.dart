import 'package:flutter/material.dart';
import 'package:astra/home/home.dart';
import 'package:astra/gallery/gallery.dart';
import 'package:astra/setting/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astramaya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Astramaya'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
        height: 55,
        child: Container(
          margin: EdgeInsets.only(),
          decoration: BoxDecoration(
              color: Color(0xFFF13929),
              borderRadius: BorderRadius.circular(40)),
          height: 55,
          child: ClipRRect(
            //borderRadius: BorderRadius.circular(30),
            child: DefaultTabController(
              length: 3,
              child: TabBar(
                controller: _controller,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_filled),
                    text: 'Home',
                    iconMargin: EdgeInsets.only(bottom: 1),
                  ),
                  Tab(
                    icon: Icon(Icons.mark_email_read_rounded),
                    text: 'Gallery',
                    iconMargin: EdgeInsets.only(bottom: 1),
                  ),
                  Tab(
                    icon: Icon(Icons.settings_suggest),
                    text: 'Setting',
                    iconMargin: EdgeInsets.only(bottom: 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      extendBody: true,
      body: TabBarView(
        children: [home(), gallery(), setting()],
        controller: _controller,
      ),
    );
  }
}
