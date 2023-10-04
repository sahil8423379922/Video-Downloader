import 'package:flutter/material.dart';
import 'package:videodownloader/screens/navigationdrawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Video Downloader",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 0, 87, 167),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          DrawerHeader(child: Container()),
          Container(
            child: NavigationDrawerActivity(),
          )
        ],
      )),
    );
  }
}
