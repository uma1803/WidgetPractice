import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;

  const GreetingWidget({super.key, required this.greetingMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      alignment: Alignment.center,
      child: Text(
        greetingMessage,
        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal, color: Colors.green),
      ),
    );
  }
}



