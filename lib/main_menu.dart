import 'package:flutter/material.dart';
import 'package:g_tracker/notifications.dart';
import 'locationd.dart';
import 'navigation_drawer.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
            title: Text("G_Tracker"),
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
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => notifications()));
                },
              )
            ]),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Bus2.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.fromLTRB(25, 10, 25, 60),
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
                      Icons.location_on,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    label: Text(
                      'Track Location',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => locationD()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
