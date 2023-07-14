import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startquiz, {super.key});

  void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/1640454622437.jpg',
            width: 140,
            // color: const Color.fromARGB(23, 45, 67, 46),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text("GCT IEEE ROBOTICS RECRUITMENT", textScaleFactor: 1.5),
          const Text("SB 81571", textScaleFactor: 1.5),
          const SizedBox(
            height: 60,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: OutlinedButton.icon(
              onPressed: startquiz,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 233, 232, 236),
                textStyle: const TextStyle(
                  fontSize: 32,
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("start"),
            ),
          ),
        ],
      ),
    );
  }
}
