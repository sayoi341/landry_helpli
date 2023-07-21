// 洗濯のおすすめ度を表示するコンポーネント

import 'package:flutter/material.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) => Flexible(
        flex: 1,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromRGBO(255, 253, 215, 1),
          ),
          child: const Column(
            children: <Widget>[
              Text("洗濯のおすすめ度"),
              Text("おすすめ度"),
            ],
          ),
        ),
      );
}
