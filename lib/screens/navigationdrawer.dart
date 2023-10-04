import 'package:flutter/material.dart';

class NavigationDrawerActivity extends StatefulWidget {
  const NavigationDrawerActivity({super.key});

  @override
  State<NavigationDrawerActivity> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawerActivity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Dashboard"),
          leading: Icon(Icons.dashboard_outlined),
        ),
        ListTile(
          title: Text("Privacy Policy"),
          leading: Icon(Icons.policy_outlined),
        ),
        ListTile(
          title: Text("Rate Us"),
          leading: Icon(Icons.star_border),
        ),
        ListTile(
          title: Text("Logout"),
          leading: Icon(Icons.logout),
        ),
        ListTile(
          title: Text("Exit App"),
          leading: Icon(Icons.exit_to_app),
        ),
      ],
    );
  }
}
