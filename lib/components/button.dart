import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:landry_helpli/models/RobotState.dart';

class Button extends HookConsumerWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      bool s = ref.watch(robotstateProvider);

      return Expanded(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: OutlinedButton(
            style: OutlinedButton.styleFrom ( 
              minimumSize: const Size(double.infinity, double.infinity),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                ),
            onPressed: () {
              ref.read(robotstateProvider.notifier).state=false;
            },
            child: s ? const Text("畳みスタート") : const Text("畳み中"),
          ),
          )
          
        );
  } 
}


