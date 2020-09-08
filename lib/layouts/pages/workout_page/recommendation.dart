import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _blockTitle('あなたへのおすすめ'),
        _blockBody(),
        _blockTitle('新着ワークアウト'),
        _blockBody(),
      ],
    );

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
    return Image.network(
        'https://picsum.photos/250?image=9',
        width: 250,
        height: 350,
        fit: BoxFit.fill
    );
  }

}