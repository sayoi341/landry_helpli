// 天気のアイコン

import 'package:flutter/material.dart';
import 'package:landry_helpli/models/whetherState.dart';

class WhetherIcon extends StatelessWidget {
  const WhetherIcon({Key? key, required this.whether}) : super(key: key);
  final Whethers whether;

  @override
  Widget build(BuildContext context) {
    if (whether == Whethers.sunny) {
      return const Image(
          image: AssetImage("images/sun.png"), width: 50, height: 50);
    } else if (whether == Whethers.cloudy) {
      return const Image(
          image: AssetImage("images/cloud.png"), width: 50, height: 50);
    } else if (whether == Whethers.rainy) {
      return const Image(
          image: AssetImage("images/rain.png"), width: 50, height: 50);
    } else if (whether == Whethers.snowy) {
      return const Image(
          image: AssetImage("images/snow.png"), width: 50, height: 50);
    } else if (whether == Whethers.moon) {
      return const Image(
          image: AssetImage("images/moon.png"), width: 50, height: 50);
    } else {
      return const Icon(
        color: Color.fromARGB(255, 0, 0, 0),
        size: 50,
        Icons.question_mark,
      );
    }
  }
}
