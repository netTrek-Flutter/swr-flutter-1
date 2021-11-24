import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/main/app.dart';
import 'package:myfirstapp/widgets/navigation/build_navigator.dart';
import 'package:myfirstapp/widgets/samples/animation_sample.dart';
import 'package:myfirstapp/widgets/samples/bloc_sample/bloc_builder_sample.dart';
import 'package:myfirstapp/widgets/samples/bloc_sample/list_view_with_bloc_builder_sample.dart';
import 'package:myfirstapp/widgets/samples/cubit_sample/bloc_builder_4_cubit_sample.dart';

/**
 * AUFGABE
 * Image kann keine SVGs darstellen!
 * - Suche unter https://pub.dev/ nach eine Packet, dass SVGs darstellen kann
 * - Stelle sicher, dass das Packet mit Dart 2 und dem Flutter Framework kompatibel ist
 * - installiere das Packet
 * - Stelle eine SVG dar (freigestellt ob über's Netzwerk oder Assets)
 */

void main() {
  // runApp(MyApp());
  // runApp(MyApp(child: ThemeSample()));
  // runApp(MyApp(child: ContainerSample()));
  // runApp(MyApp(child: GradientMagicSample()));
  // runApp(MyApp(child: ColumnSample()));
  // runApp(MyApp(child: TextSample()));
  // runApp(MyApp(child: IconSample()));
  // runApp(MyApp(child: ImageSample()));
  // runApp(MyApp(child: ImageFitSample()));
  // runApp(MyApp(child: SvgSample()));
  // runApp(MyApp(child: DrawSample()));
  // runApp(MyApp(child: ButtonSample()));
  // runApp(MyApp(child: CustomPainterSample()));
  // runApp(MyApp(child: TransformSample()));
  // runApp(MyApp(child: StackSample()));
  // setPreferredOrientations();
  // runApp(MyApp(child: MediaQuerySample()));
  // runApp(MyApp(child: InheritedWidgetSample()));
  // runApp(MyApp(child: FutureBuilderSample()));
  // runApp(MyApp(child: ListViewSample()));
  // runApp(MyApp(child: GridViewSample()));
  // runApp(MyApp(child: SliverViewSample()));
  // runApp(MyApp(child: ListViewStatefulSample()));
  // runApp(MyApp(
  //     child: const AnimiereContainer(
  //   defaultSize: 20,
  // )));
  // runApp(MyApp(
  //   child: BlocBuilderSample(),
  //   enableBloc: true,
  // ));
  // runApp(MyApp(
  //   child: ListViewWithBlocBuilderSample(),
  //   enableBloc: true,
  // ));
  // runApp(MyApp(
  //   child: BlocBuilder4CubitSample(),
  //   enableCubit: true,
  // ));
  runApp(MyApp(navigator: buildNavigator()));
}
