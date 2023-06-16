//天気情報を載せる

import 'package:flutter/material.dart';
import 'package:landry_helpli/components/whether_icon.dart';

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
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "現在の天気",
                    style: TextStyle(fontSize: 16),
                  ),
                  WhetherIcon(whether: "cloud"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "今後の天気",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            WhetherIcon(whether: "sun"),
                            Text("14:00")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            WhetherIcon(whether: "cloud"),
                            Text("14:00")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            WhetherIcon(whether: "rain"),
                            Text("14:00")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            WhetherIcon(whether: "moon"),
                            Text("14:00")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("花粉情報"),
                      Text("少", style: TextStyle(fontSize: 32)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("黄砂情報"),
                      Text("少", style: TextStyle(fontSize: 32)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
