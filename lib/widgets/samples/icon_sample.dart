import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconSample extends StatelessWidget {
  const IconSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.access_alarm), // Material Icons
        const Icon(CupertinoIcons.alarm), // Cupertion Icons
        Icon(Icons.adaptive.flip_camera), // Adaptiv
        Icon(
          Icons.adaptive.flip_camera,
          size: 24, // default
        ), // Adaptiv
        Icon(
          Icons.adaptive.flip_camera,
          size: 48, // default
        ), // Adaptiv
        Icon(
          Icons.adaptive.flip_camera,
          color: Colors.red,
          size: 48, // default
        ), // Adaptiv
      ],
    );
  }
}
