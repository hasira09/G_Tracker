import 'package:flutter/material.dart';
import 'package:g_tracker/pages/settings/changeP.dart';
import 'package:g_tracker/pages/settings/privacy.dart';
import 'package:g_tracker/pages/settings/terms&cond.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                Color.fromRGBO(68, 200, 245, 1),
                Color.fromRGBO(68, 200, 245, 1),
              ])),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Bus2.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 70),
            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
              child: Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(23, 71, 158, 50),
                    minimumSize: const Size(50, 50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => changePass()));
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 30),
              child: Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(23, 71, 158, 50),
                    minimumSize: const Size(50, 50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  icon: Icon(
                    Icons.privacy_tip_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => privacyP()));
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 60),
              child: Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(23, 71, 158, 50),
                    minimumSize: const Size(60, 50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  icon: Icon(
                    Icons.menu_book_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text(
                    'Terms & Conditions',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => termsC()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
