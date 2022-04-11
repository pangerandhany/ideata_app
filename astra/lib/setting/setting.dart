import 'package:astra/gallery/detailsreport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:astra/setting/profile.dart';
import 'package:astra/setting/contact_us.dart';

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                //Image.asset('images/logo gojek1.png', scale: 24),
                Image.asset('images/Astramaya Logo.png', scale: 22),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 40, right: 16),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/logo gojek1.png', scale: 10),
                //Image.asset('images/Astramaya Logo.png', scale: 22),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text("pangerandhany@gojek.com",
                  style: TextStyle(
                      fontSize: 10,
                      //fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black)),
            ),
            Divider(
              height: 90,
              thickness: 15,
              color: Color(0xFFFDFE0EB),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFFF13929),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  child: FlatButton(
                    child: Text("Profile",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage()));
                    },
                  ),
                )
              ],
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Color(0xFFF13929),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  child: FlatButton(
                    child: Text("Contact Us",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ContactUs()));
                    },
                  ),
                )
              ],
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Color(0xFFF13929),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  child: FlatButton(
                    child: Text("Log Out",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                  ),
                )
              ],
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => EditProfilePage()));
      },

      // Untuk Teks Profile dan Contact Us
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
