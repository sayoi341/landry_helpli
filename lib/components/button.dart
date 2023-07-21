import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:landry_helpli/models/robot_model.dart';

import 'package:landry_helpli/apis/api.dart';

import 'package:http/http.dart' as http;

class Button extends StatefulHookConsumerWidget {
  const Button({super.key});

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends ConsumerState<Button> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> getData() async {
    try {
      var response =
          await http.get(Uri.http(dotenv.get('R_ENDPOINT'), 'start'));
      print(response.statusCode);

      if (response.statusCode == 200) {
        ref.read(robotStateProvider.notifier).state = false;
      } else {
        ref.read(robotStateProvider.notifier).state = true;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    bool s = ref.watch(robotStateProvider);

    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, double.infinity),
            backgroundColor: const Color.fromRGBO(255, 253, 215, 1),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            getData();
          },
          child: s ? const Text("畳みスタート") : const Text("畳み中"),
        ),
      ),
    );
  }
}
