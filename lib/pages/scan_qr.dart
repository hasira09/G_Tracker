import 'package:flutter/material.dart';
import 'package:g_tracker/scanner.dart';

class scanQR extends StatelessWidget {
  const scanQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
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
      body: Center(
        child: ElevatedButton(
            child: Text('Scan'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scanner()),
              );
            }),
      ),
    );
  }
}
