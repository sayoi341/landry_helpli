// 洗濯のおすすめ度を表示するコンポーネント

import 'package:flutter/material.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              const Text("洗濯のおすすめ度"),
              const Text("おすすめ度"),
            ],
          ),
        ),
      );
}
