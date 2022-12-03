import 'package:flutter/material.dart';

class termsC extends StatelessWidget {
  const termsC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Terms & Conditions'),
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
                //color: Colors.transparent,
                //elevation: 10,
                child: Image.asset("assets/images/T1.png"),
              ),
              Card(
                //elevation: 5,
                child: Image.asset("assets/images/T2.png"),
              ),
              Card(
                //elevation: 10,
                child: Image.asset("assets/images/T3.png"),
              ),
              Card(
                //elevation: 10,
                child: Image.asset("assets/images/T4.png"),
              ),
              Card(
                //elevation: 10,
                child: Image.asset("assets/images/T5.png"),
              ),
            ],
          ),
        ));
  }
}
