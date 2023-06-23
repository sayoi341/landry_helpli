//ホームページの中身を記述する
//ホームページは、ロボットの情報、天気の情報、選択のおすすめ度、ロボ稼働ボタンを表示する
//順次Textを変更していく

import 'package:flutter/material.dart';
import 'package:landry_helpli/components/button.dart';
import 'package:landry_helpli/components/recommendation.dart';
import 'package:landry_helpli/components/robot_status.dart';

import 'package:landry_helpli/components/whether.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RobotStatus(),
              Whether(),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Recommendation(),
                    Button(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
