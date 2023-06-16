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
  Widget build(BuildContext context) => Flexible(
        child: Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom (
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            onPressed: _toggleAble,
            child: _able ? const Text("畳みスタート") : const Text("畳み中"),
          ),
        ),
      );
}
