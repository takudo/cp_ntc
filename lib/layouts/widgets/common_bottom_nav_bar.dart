import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar_button.dart';

class CommonBottomNavbar extends StatefulWidget {
  // BottomNavigationBar だと、必ず titleプロパティ（テキスト表記）が必要になるため、
  // こちらを参考にした https://stackoverflow.com/questions/53941837/bottomnavigationbar-without-text

  final MenuSelection _menuSelection;
  CommonBottomNavbar(index): this._menuSelection = MenuSelection(index);

  @override
  _CommonBottomNavbarState createState() => _CommonBottomNavbarState(
    _menuSelection
  );
}

class _CommonBottomNavbarState extends State<CommonBottomNavbar> {
  final MenuSelection _menuSelection;
  _CommonBottomNavbarState(this._menuSelection);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          BottomNavBarButton(selected: _menuSelection.feedSelected, icon: Icon(Icons.assignment)),
          BottomNavBarButton(selected: _menuSelection.activitySelected, icon: Icon(Icons.pie_chart_outlined)),
          BottomNavBarButton(selected: _menuSelection.workoutSelected, icon: Icon(Icons.watch)),
          BottomNavBarButton(selected: _menuSelection.mailTraySelected, icon: Icon(Icons.mail_outline)),
        ],
      ),
    );
  }

}

class MenuSelection {

  bool feedSelected = false;
  bool activitySelected = false;
  bool workoutSelected = false;
  bool mailTraySelected = false;

  MenuSelection(index){
    switch(index){
      case 0:
        feedSelected = true;
        break;
      case 1:
        activitySelected = true;
        break;
      case 2:
        workoutSelected = true;
        break;
      case 3:
        mailTraySelected = true;
        break;
//      default:
//        throw Error("予期しないインデックス番号が渡されました");
    }
  }


}
