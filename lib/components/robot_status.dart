// ロボの状態を表示

import 'package:flutter/material.dart';

class RobotStatus extends StatefulWidget {
  const RobotStatus({super.key});

  @override
  State<RobotStatus> createState() => _RobotStatusState();
}

class _RobotStatusState extends State<RobotStatus> {
  @override
  Widget build(BuildContext context) => Flexible(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "現在の状態",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "待機中",
                style: TextStyle(fontSize: 32),
              ),
            ],
          ),
        ),
      );
}
