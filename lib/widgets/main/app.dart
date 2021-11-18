import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  final Widget? child;

  const MyApp({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: child is ThemeSample ? theme : null,
      darkTheme: child is ThemeSample ? darkTheme : null,
      themeMode: ThemeMode.system,
      home: MyHome(
        child: child,
      ),
    );
  }
}
