import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/common/my_bottom_navigation_bar.dart';

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
