// ロボットの操作ボタン

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const Text("ロボットの操作"),
              ElevatedButton(
                onPressed: () {},
                child: const Text("ロボットを稼働"),
              ),
            ],
          ),
        ),
      );
}
