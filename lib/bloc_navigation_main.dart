import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myfirstapp/nav_bloc/navigation_bloc.dart';
import 'package:myfirstapp/widgets/main/app.dart';
import 'package:myfirstapp/widgets/navigation/build_navigator.dart';
import 'package:myfirstapp/widgets/private/bloc_sample/bloc_builder_sample.dart';
import 'package:myfirstapp/widgets/private/bloc_sample/list_view_with_bloc_builder_sample.dart';
import 'package:myfirstapp/widgets/private/futur_builder_sample.dart';
import 'package:myfirstapp/widgets/private/grid_view_sample.dart';
import 'package:myfirstapp/widgets/private/inherited_widget_sample.dart';
import 'package:myfirstapp/widgets/private/list_view_sample.dart';
import 'package:myfirstapp/widgets/private/list_view_statefull_sample.dart';
import 'package:myfirstapp/widgets/private/sliver_view_sample.dart';
import 'package:myfirstapp/widgets/samples/button_sample.dart';
import 'package:myfirstapp/widgets/samples/column_sample.dart';
import 'package:myfirstapp/widgets/samples/container_sample.dart';
import 'package:myfirstapp/widgets/samples/custom_painter_sample.dart';
import 'package:myfirstapp/widgets/samples/draw_sample.dart';
import 'package:myfirstapp/widgets/samples/gradient_magic_sample.dart';
import 'package:myfirstapp/widgets/samples/icon_sample.dart';
import 'package:myfirstapp/widgets/samples/image_fit_sample.dart';
import 'package:myfirstapp/widgets/samples/image_sample.dart';
import 'package:myfirstapp/widgets/samples/media_query_sample.dart';
import 'package:myfirstapp/widgets/samples/stack_sample.dart';
import 'package:myfirstapp/widgets/samples/svg_sample.dart';
import 'package:myfirstapp/widgets/samples/text_sample.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';
import 'package:myfirstapp/widgets/samples/transform_sample.dart';

main() {
  setPreferredOrientations();

  runApp(
    BlocProvider(
      create: (context) => NavigationBloc(
        {
          'app': const MyApp(),
          'theme': const ThemeSample(),
          'container': const ContainerSample(),
          'gradient': const GradientMagicSample(),
          'column': const ColumnSample(),
          'text': const TextSample(),
          'icon': const IconSample(),
          'image': const ImageSample(),
          'image fit': const ImageFitSample(),
          'svg': const SvgSample(),
          'draw': const DrawSample(),
          'button': const ButtonSample(),
          'paint': const CustomPainterSample(),
          'transform': const TransformSample(),
          'stack': const StackSample(),
          'media query': const MediaQuerySample(),
          'inherited': const InheritedWidgetSample(),
          'future': const FutureBuilderSample(),
          'list': const ListViewSample(),
          'grid': const GridViewSample(),
          'sliver': const SliverViewSample(),
          'list view stfull': const ListViewStatefulSample(),
          'bloc builder': const MyApp(
            enableBloc: true,
            child: BlocBuilderSample(),
          ),
          'bloc list': const MyApp(
            enableBloc: true,
            child: ListViewWithBlocBuilderSample(),
          ),
          'navigator': MyApp(navigator: buildNavigator()),
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
