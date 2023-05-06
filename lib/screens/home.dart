
import 'package:alubank/components/sections/account_actions.dart';
import 'package:alubank/components/sections/account_points.dart';
import 'package:flutter/material.dart';
import '../components/sections/header.dart';
import '../components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints()
        ],
      ),
    );
  }
}
