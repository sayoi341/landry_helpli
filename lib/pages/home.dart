//ホームページの中身を記述する
//ホームページは、ロボットの情報、天気の情報、選択のおすすめ度、ロボ稼働ボタンを表示する
//順次Textを変更していく

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Expanded(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('LANDRY HELPLI'),
            toolbarHeight: 56,
          ),
          body: Container(
            margin: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text("ロボの情報"),
                  const Text("天気の情報"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text("選択のおすすめ度"),
                      Text("ロボ稼働ボタン"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
