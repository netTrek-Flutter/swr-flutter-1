import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/samples/button_sample.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  final Widget? child;
  final Navigator? navigator;

  const MyApp({Key? key, this.child, this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (child is ThemeSample || child is ButtonSample) ? theme : null,
      darkTheme: child is ThemeSample ? darkTheme : null,
      themeMode: ThemeMode.system,
      home: (navigator != null) ? navigator : MyHome(child: child),
    );
  }
}
