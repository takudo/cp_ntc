import 'package:cp_ntc/layouts/widgets/common_app_bar.dart';
import 'package:cp_ntc/layouts/widgets/common_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  ActivityPage({Key key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        "アクティビティ",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
      bottomNavigationBar: CommonBottomNavbar(_selectedIndex),
    );
  }
}
