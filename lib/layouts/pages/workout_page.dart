import 'package:cp_ntc/layouts/pages/workout_page/recommendation.dart';
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

    const tabTexts = [
      'あなたにおすすめ',
      '見る',
      'コレクション',
      'プラン'
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CommonAppBar(
          title: "ワークアウト",
          bottom: TabBar(
            isScrollable: true,
            tabs: tabTexts.map(_tab).toList(),
            indicatorColor: Colors.black,
            labelStyle: TextStyle(fontSize: 16),
            indicatorWeight: 1,
          ),
        ),
        body: TabBarView(
          children: [
            RecommendationPage(),
            Text('見る'),
            Text('コレクション'),
            Text('プラン'),
          ],
        ),
        bottomNavigationBar: CommonBottomNavbar(_selectedIndex),
      ),
    );
  }

  Widget _tab(String text) {
    return Container(
      child: Text(text),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    );
  }

}
