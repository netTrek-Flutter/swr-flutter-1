import 'package:flutter/material.dart';

import 'widgets/my_bottom_navigation_bar.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      theme: ThemeData(
          fontFamily: 'Monospace',
          colorScheme: const ColorScheme.light(
            primary: Colors.red,
            secondary: Colors.deepOrangeAccent,
          ),
          scaffoldBackgroundColor: Colors.grey,
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          )),
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ),
      themeMode: ThemeMode.light,
      */
      home: MyHome(
        child: const ContainerSample(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  Widget? child;

  MyHome({Key? key, this.child}) : super(key: key);

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

class ContainerSample extends StatelessWidget {
  const ContainerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const SizedBox(
    //   width: 50,
    //   child: ColoredBox(
    //     color: Colors.red,
    //     child: Text('hello World!'),
    //   ),
    // );
    return Container(
/*
      color: Colors.red,

      width: 150,
      height: 150,
*/

      constraints: const BoxConstraints(
        minWidth: 100,
        minHeight: 100,
        maxHeight: 150,
      ),

      decoration: BoxDecoration(
        color: Colors.red,
      ),

      padding: const EdgeInsets.all(5),

      margin: const EdgeInsets.all(5),

      // alignment: Alignment(0, 0), // -1 -> 1 - Center 0 x 0
      // alignment: Alignment(-1, 0),
      // alignment: Alignment(-1, -1),
      // alignment: Alignment(1, 1),
      // alignment: FractionalOffset(1, 1),
      // alignment: FractionalOffset(0.5, 0.5), // 0 -> 1 - center 0,5 x 0,5
      // alignment: FractionalOffset.
      // alignment: Alignment.centerRight,

      // transform: Matrix4.rotationZ(0.1),
      // transform: Matrix4.rotationZ(45 * pi / 180),
      // transformAlignment: Alignment.center,
      // transformAlignment: Alignment.centerRight,

      // padding: EdgeInsets.only(left: 5),
      child: const Text('hello World! asd ndasd '),
    );
  }
}

class ThemeSample extends StatelessWidget {
  const ThemeSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Text(
        'Hello Word',
        // style: Theme.of(context).textTheme.headline1,
        style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 24),
      );
    });
  }
}

/*

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
