import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSample extends StatelessWidget {
  const ButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextButton(
          onPressed: null, //disabled
          // onPressed: () => print('textbtn clicked'),
          child: Text('hello text btn'),
        ),
        IconButton(
          onPressed: () => print('icon btn pressen'),
          icon: Icon(Icons.access_alarm),
        ),
        ElevatedButton(
          onPressed: () => print('elevated btn pressen'),
          child: const Text('hello elevated btn'),
        ),
        OutlinedButton(
          onPressed: () => print('Outlined btn pressen'),
          child: const Text('hello Outlined btn'),
        )
      ],
    );
  }
}
