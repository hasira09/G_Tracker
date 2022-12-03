import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class emergency extends StatelessWidget {
  const emergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = '0771458580';

    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency'),
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
                image: AssetImage('assets/images/emergency.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 28,
            ),
            SizedBox(
              height: 520,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 60),
              child: Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 0, 0, 1),
                    minimumSize: const Size(50, 50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  icon: Icon(
                    Icons.call_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text(
                    'Emergency Dial',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    launch('tel://$number');
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
