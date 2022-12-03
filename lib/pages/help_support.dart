import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number1 = '0112100500';
    final number2 = '0783053199';

    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
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
                image: AssetImage('assets/images/help.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 400,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 15),
              child: Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
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
                    'Hotline - 1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    launch('tel://$number1');
                  },
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 60),
              child: Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
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
                    'Hotline - 2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    launch('tel://$number2');
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
