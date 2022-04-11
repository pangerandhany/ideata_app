import 'package:flutter/material.dart';
import 'package:astra/setting/setting.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: AppBar(
            backgroundColor: Color(0xFFF13929),
            elevation: 5.0,
            flexibleSpace: Positioned(
              top: 1000,
              right: 100,
              child: Container(
                padding: EdgeInsets.only(top: 125),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Image.asset('images/logo gojek1.png', scale: 24),
                    Image.asset('images/Astramaya Logo.png', scale: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(left: 0, top: 200, right: 35),
            child: buildButton()),
      );

  Widget buildButton() {
    return ListView(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.phone,
          color: Color(0xFFF13929),
        ),
        SizedBox(
          width: 10,
        ),

        Divider(
          height: 2,
          thickness: 2,
        ),
        SizedBox(
          width: 10,
        ),
        //Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        RaisedButton(
          onPressed: () {
            launch('tel:+628123456789');
            // direct phone call
            //FlutterPhoneDirectCaller.callNumber(number);
          },
          color: Color.fromARGB(255, 0, 192, 99),
          padding: EdgeInsets.symmetric(horizontal: 45),
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Text(
            "CALL",
            style: TextStyle(
                fontSize: 14, letterSpacing: 2.2, color: Colors.white),
          ),
        ),
      ])
    ]);
  }
}
