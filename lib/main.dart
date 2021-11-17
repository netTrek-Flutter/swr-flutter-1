import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/samples/column_sample.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';

import 'widgets/common/my_bottom_navigation_bar.dart';

void main() {
  // runApp(const MyApp());
  // runApp(const MyApp(child: ThemeSample()));
  // runApp(const MyApp(child: ContainerSample()));
  // runApp(const MyApp(child: GradientMagicSample()));
  runApp(const MyApp(child: ColumnSample()));
}

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

class MyHome extends StatelessWidget {
  final Widget? child;

  const MyHome({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('clicked'),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
