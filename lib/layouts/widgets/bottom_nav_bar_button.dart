import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarButton extends StatefulWidget{

  BottomNavBarButton({
    @required this.icon,
    @required this.selected,
  });

  final Icon icon;
  final bool selected;

  @override
  _BottomNavBarButtonState createState() => _BottomNavBarButtonState(
    selected: selected,
    icon: icon
  );

}

class _BottomNavBarButtonState extends State<BottomNavBarButton> {

  _BottomNavBarButtonState({
    this.selected,
    this.icon
  });

  bool selected;
  Icon icon;

  @override
  Widget build(BuildContext context) {

    Color color = selected ? Colors.black : Colors.black12;

    return IconButton(
      icon: icon,
      color: color,
      onPressed: () {},
    );
  }

}