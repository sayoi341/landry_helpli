// ロボの状態を表示

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:landry_helpli/models/robotStats.dart';

class RobotStatus extends HookConsumerWidget {
  const RobotStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool s = ref.watch(robotStateProvider);

    return Flexible(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(255, 253, 215, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "現在の状態",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              s ? "待機中" : "実行中",
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
