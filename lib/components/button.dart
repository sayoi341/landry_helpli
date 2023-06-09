import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:landry_helpli/models/robotStats.dart';

class Button extends HookConsumerWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool s = ref.watch(robotStateProvider);

    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(16),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, double.infinity),
          backgroundColor: Color.fromRGBO(255, 253, 215, 1),
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          ref.read(robotStateProvider.notifier).state = false;
        },
        child: s ? const Text("畳みスタート") : const Text("畳み中"),
      ),
    ));
  }
}
