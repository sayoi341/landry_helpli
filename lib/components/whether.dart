//天気情報を載せる

import 'package:flutter/material.dart';

class Whether extends StatefulWidget {
  const Whether({super.key});

  @override
  State<Whether> createState() => _WhetherState();
}

class _WhetherState extends State<Whether> {
  @override
  Widget build(BuildContext context) => Flexible(
        flex: 4,
        child: Container(
          margin: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              const Text("天気情報"),
              const Text("気温"),
              const Text("湿度"),
              const Text("風速"),
            ],
          ),
        ),
      );
}
