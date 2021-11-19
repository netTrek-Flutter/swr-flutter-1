import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/navigation/build_scaffold.dart';
import 'package:myfirstapp/widgets/private/grid_view_sample.dart';
import 'package:myfirstapp/widgets/private/list_view_sample.dart';
import 'package:myfirstapp/widgets/samples/image_fit_sample.dart';

const page_list = 'list';
const page_image = 'image';
const page_gird = 'gird';

const pages = [page_image, page_list, page_gird];

Navigator buildNavigator() {
  return Navigator(
    initialRoute: page_image,
    onGenerateRoute: (routeSettings) {
      switch (routeSettings.name) {
        case page_image:
          return MaterialPageRoute(
              builder: (context) => buildScaffold(
                  child: const ImageFitSample(),
                  appBarTitle: routeSettings.name));
        case page_list:
          return MaterialPageRoute(
              builder: (context) => buildScaffold(
                  child: const ListViewSample(),
                  appBarTitle: routeSettings.name));
        case page_gird:
          return MaterialPageRoute(
              builder: (context) => buildScaffold(
                  child: const GridViewSample(),
                  appBarTitle: routeSettings.name));
      }
    },
    onUnknownRoute: (routeSettings) => MaterialPageRoute(
      builder: (context) => Center(
        child: Text('Route ${routeSettings.name} unavailable!'),
      ),
    ),
  );
}
