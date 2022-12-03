import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class changePass extends StatefulWidget {
  const changePass({Key? key}) : super(key: key);

  @override
  _changePassState createState() => _changePassState();
}

class _changePassState extends State<changePass> {
  late String email;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Your Password"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Bus2.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 20,
              child: Text("A Verification Code Will Sent to your Email",
                  style: TextStyle(
                      color: Color.fromRGBO(23, 71, 158, 1),
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(23, 71, 158, 1),
                        style: BorderStyle.solid)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your User Email',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(23, 71, 158, 50),
                      minimumSize: const Size(10, 38),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    label: Text(
                      'Send Request',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    onPressed: () {
                      auth.sendPasswordResetEmail(email: email);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
