import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myfirstapp/widgets/samples/bloc_sample/post_bloc.dart';
import 'package:myfirstapp/widgets/samples/button_sample.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  final Widget? child;
  final Navigator? navigator;
  final bool? enableBloc;

  const MyApp({Key? key, this.child, this.enableBloc, this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (child is ThemeSample || child is ButtonSample) ? theme : null,
      darkTheme: child is ThemeSample ? darkTheme : null,
      themeMode: ThemeMode.system,
      home: (navigator != null)
          ? navigator
          : MyHome(
              child: (enableBloc == null || enableBloc == false)
                  ? child
                  : BlocProvider(create: (_) => PostBloc(), child: child),
            ),
    );
  }
}
