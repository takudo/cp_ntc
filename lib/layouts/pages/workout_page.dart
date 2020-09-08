import 'package:cp_ntc/layouts/widgets/common_app_bar.dart';
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CommonAppBar(
          title: "ワークアウト",
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Text('あなたにおすすめ'),
              Text('見る'),
              Text('コレクション'),
              Text('プラン'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('あなたにおすすめ'),
            Text('見る'),
            Text('コレクション'),
            Text('プラン'),
          ],
        ),
        bottomNavigationBar: CommonBottomNavbar(_selectedIndex),
      ),
    );
  }
}
