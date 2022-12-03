import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:g_tracker/pages/about-us.dart';
import 'package:g_tracker/pages/emergency.dart';
import 'package:g_tracker/pages/help_support.dart';
import 'package:g_tracker/pages/payment.dart';
import 'package:g_tracker/pages/scan_qr.dart';
import 'package:g_tracker/pages/settings.dart';
import 'package:g_tracker/user_auth.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  openURL() {
    String URL = "https://sltc.ac.lk/";
    launch(URL);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.white,
              Color.fromRGBO(68, 200, 245, 50),
            ])),
        child: ListView(
          padding: padding,
          children: <Widget>[
            SizedBox(
              height: 55,
            ),
            Container(
              height: 60.0,
              width: 20.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/top.png"),
                    fit: BoxFit.fitWidth),
                shape: BoxShape.rectangle,
              ),
            ),
            const SizedBox(height: 30),
            buildMenuItem(
              text: 'Scan QR Code',
              icon: Icons.qr_code_2_rounded,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Payment Detils',
              icon: Icons.payment_rounded,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Help & Support',
              icon: Icons.help_outline_rounded,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Emergency',
              icon: Icons.local_police_rounded,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
                text: 'About SLTC',
                icon: Icons.school_rounded,
                onClicked: () {
                  openURL();
                }),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'About Us',
              icon: Icons.people_outline_rounded,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.white),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 6),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: "Log-Out",
              icon: Icons.logout_rounded,
              onClicked: () {
                logout(context);
              },
            ),
            const SizedBox(
              height: 58,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/footer.png"),
                      alignment: Alignment.bottomCenter),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final Color = Colors.black;
    return ListTile(
      leading: Icon(icon, color: Color),
      title: Text(text, style: TextStyle(color: Color)),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => scanQR(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => payment(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => help(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => emergency(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => aboutUs(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => settings(),
        ));
        break;
    }
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
