import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _able = true;
  void _toggleAble() {
    setState(() {
      _able = !_able;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          child: _able ?
            Text("true"):Text("false"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xFFFFFDD7),
              foregroundColor: Color(000000),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),
          onPressed: _toggleAble,
          )
      ),
    );
  }
}
