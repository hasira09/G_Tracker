import 'package:flutter/material.dart';

class privacyP extends StatelessWidget {
  const privacyP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Privacy Policy'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                  Color.fromRGBO(68, 200, 245, 50),
                  Color.fromRGBO(68, 200, 245, 50),
                ])),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Card(
                child: Image.asset("assets/images/P1.png"),
              ),
              Card(
                child: Image.asset("assets/images/P2.png"),
              ),
            ],
          ),
        ));
  }
}
