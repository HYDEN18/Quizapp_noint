import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers(this.ans, this.onTap, {super.key});

  final String ans;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 35),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      child: Text(
        ans,
        textAlign: TextAlign.center,
      ),
    );
  }
}
