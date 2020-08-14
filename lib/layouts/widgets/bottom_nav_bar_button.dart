import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarButton extends StatefulWidget{

  BottomNavBarButton({
    @required this.icon,
    @required this.selected,
    @required this.routeName,
  });

  final Icon icon;
  final bool selected;
  final String routeName;

  @override
  _BottomNavBarButtonState createState() => _BottomNavBarButtonState(
    selected: selected,
    icon: icon,
    routeName: routeName,
  );

}

class _BottomNavBarButtonState extends State<BottomNavBarButton> {

  _BottomNavBarButtonState({
    this.selected,
    this.icon,
    this.routeName
  });

  bool selected;
  Icon icon;
  String routeName;

  @override
  Widget build(BuildContext context) {

    Color color = selected ? Colors.black : Colors.black12;

    return IconButton(
      icon: icon,
      color: color,
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
    );
  }

}