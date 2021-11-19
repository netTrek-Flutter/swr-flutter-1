import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myfirstapp/nav_bloc/navigation_bloc.dart';
import 'package:myfirstapp/widgets/samples/column_sample.dart';
import 'package:myfirstapp/widgets/samples/container_sample.dart';
import 'package:myfirstapp/widgets/samples/draw_sample.dart';
import 'package:myfirstapp/widgets/samples/gradient_magic_sample.dart';
import 'package:myfirstapp/widgets/samples/icon_sample.dart';
import 'package:myfirstapp/widgets/samples/image_fit_sample.dart';
import 'package:myfirstapp/widgets/samples/image_sample.dart';
import 'package:myfirstapp/widgets/samples/media_query_sample.dart';
import 'package:myfirstapp/widgets/samples/svg_sample.dart';
import 'package:myfirstapp/widgets/samples/text_sample.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';

main() {
  setPreferredOrientations();

  runApp(
    BlocProvider(
      create: (context) => NavigationBloc(
        const {
          'theme': ThemeSample(),
          'container': ContainerSample(),
          'gradient': GradientMagicSample(),
          'column': ColumnSample(),
          'text': TextSample(),
          'icon': IconSample(),
          'image': ImageSample(),
          'image fit': ImageFitSample(),
          'svg': SvgSample(),
          'draw': DrawSample(),
        },
        '',
      ),
      child: const MaterialApp(
        home: MyBlocApp(),
      ),
    ),
  );
}

class MyBlocApp extends StatelessWidget {
  const MyBlocApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: state.routes[state.selected] ??
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: state.routes.keys
                      .map(
                        (routeName) => TextButton(
                          onPressed: () =>
                              BlocProvider.of<NavigationBloc>(context)
                                  .add(NavigateTo(routeName)),
                          child: Text(routeName),
                        ),
                      )
                      .toList(),
                ),
              ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.routes.containsKey(state.selected)
                ? state.routes.keys.first == state.selected
                    ? 1
                    : 2
                : 0,
            onTap: (index) {
              switch (index) {
                case 0:
                  BlocProvider.of<NavigationBloc>(context).add(
                    const NavigateTo(''),
                  );
                  break;
                case 1:
                  BlocProvider.of<NavigationBloc>(context).add(
                    NavigateTo(state.routes.keys.first),
                  );
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.adaptive.more),
                label: 'Select',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.adaptive.arrow_forward),
                label: 'First',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.adaptive.share_sharp),
                label: 'Other',
              ),
            ],
          ),
        );
      },
    );
  }
}
