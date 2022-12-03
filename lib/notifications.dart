import 'package:flutter/material.dart';
import 'package:g_tracker/main_menu.dart';

class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainMenu()));
              })
        ],
        title: Text('Notifications'),
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Bus2.png'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
