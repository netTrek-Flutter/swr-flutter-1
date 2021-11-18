import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  const TextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World ! ***',
      style: TextStyle(
        color: Colors.red,
        backgroundColor: Colors.yellow,
        fontFamily: 'Monospace',
        fontWeight: FontWeight.bold,
        fontSize: 48,
      ),
    );
  }
}
