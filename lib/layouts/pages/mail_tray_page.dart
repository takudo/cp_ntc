import 'package:cp_ntc/layouts/widgets/common_app_bar.dart';
import 'package:cp_ntc/layouts/widgets/common_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MailTrayPage extends StatefulWidget {
  MailTrayPage({Key key}) : super(key: key);

  @override
  _MailTrayPageState createState() => _MailTrayPageState();
}


class _MailTrayPageState extends State<MailTrayPage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "受信トレイ",
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
