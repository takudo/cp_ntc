import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _blockTitle('あなたへのおすすめ'),
          _blockBody(),
          _blockTitle('新着ワークアウト'),
          _blockBody(),
        ],
      ),
    )

      ;

  }

  Widget _blockTitle(String text) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 20, bottom: 16),
      child: Text(text, //テキスト
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            // backgroundColor: Colors.blue
          )
      ),
      // margin: EdgeInsets.only(bottom: 16),
    );
  }

  Widget _blockBody() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _blockTile(),
            _blockTile(),
            _blockTile(),
            _blockTile(),
            _blockTile(),
          ],
        )
    );
  }

  Widget _blockTile() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/250?image=9',
            width: 250,
            height: 350,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              child: Text('イグニションポイント', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      )

    );
  }

}