import 'package:cp_ntc/layouts/widgets/common_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  WorkoutPage({Key key}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}


class _WorkoutPageState extends State<WorkoutPage> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ワークアウト"),
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
