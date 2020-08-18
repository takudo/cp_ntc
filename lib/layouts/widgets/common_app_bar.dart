import 'package:flutter/material.dart';

class CommonAppBar extends AppBar {

  CommonAppBar(String title):
    super(
        centerTitle: false,
        leading: Icon(Icons.account_circle),
        title: Text(title, ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {  },)
        ]
      );
}