import 'package:flutter/material.dart';

class CommonAppBar extends AppBar {

  CommonAppBar({
    @required String title,
    PreferredSizeWidget bottom
  }):
    super(
        centerTitle: false,
        leading: Icon(Icons.account_circle),
        title: Text(title, ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {  },)
        ],
        bottom: bottom
      );
}