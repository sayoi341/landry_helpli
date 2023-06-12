// 天気のアイコン

import 'package:flutter/material.dart';

class WhetherIcon extends StatelessWidget {
  const WhetherIcon({Key? key, required this.whether}) : super(key: key);
  final String whether;

  @override
  Widget build(BuildContext context) {
    if (whether == "sun") {
      return const Image(
          image: AssetImage("images/sun.png"), width: 50, height: 50);
    } else if (whether == "cloud") {
      return const Image(
          image: AssetImage("images/cloud.png"), width: 50, height: 50);
    } else if (whether == "rain") {
      return const Image(
          image: AssetImage("images/rain.png"), width: 50, height: 50);
    } else if (whether == "snow") {
      return const Image(
          image: AssetImage("images/snow.png"), width: 50, height: 50);
    } else if (whether == "moon") {
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
