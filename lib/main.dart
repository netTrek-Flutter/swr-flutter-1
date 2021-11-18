import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/main/app.dart';
import 'package:myfirstapp/widgets/private/futur_builder_sample.dart';
import 'package:myfirstapp/widgets/private/grid_view_sample.dart';
import 'package:myfirstapp/widgets/private/inherited_widget_sample.dart';
import 'package:myfirstapp/widgets/private/list_view_sample.dart';
import 'package:myfirstapp/widgets/private/list_view_statefull_sample.dart';
import 'package:myfirstapp/widgets/private/sliver_view_sample.dart';
import 'package:myfirstapp/widgets/samples/media_query_sample.dart';
import 'package:myfirstapp/widgets/samples/stack_sample.dart';
import 'package:myfirstapp/widgets/samples/button_sample.dart';
import 'package:myfirstapp/widgets/samples/column_sample.dart';
import 'package:myfirstapp/widgets/samples/container_sample.dart';
import 'package:myfirstapp/widgets/samples/custom_painter_sample.dart';
import 'package:myfirstapp/widgets/samples/draw_sample.dart';
import 'package:myfirstapp/widgets/samples/gradient_magic_sample.dart';
import 'package:myfirstapp/widgets/samples/icon_sample.dart';
import 'package:myfirstapp/widgets/samples/image_fit_sample.dart';
import 'package:myfirstapp/widgets/samples/image_sample.dart';
// import 'package:myfirstapp/widgets/samples/stack_sample_new.dart';
import 'package:myfirstapp/widgets/samples/svg_sample.dart';
import 'package:myfirstapp/widgets/samples/text_sample.dart';
import 'package:myfirstapp/widgets/samples/theme_sample.dart';
import 'package:myfirstapp/widgets/samples/transform_sample.dart';

/**
 * AUFGABE
 * Image kann keine SVGs darstellen!
 * - Suche unter https://pub.dev/ nach eine Packet, dass SVGs darstellen kann
 * - Stelle sicher, dass das Packet mit Dart 2 und dem Flutter Framework kompatibel ist
 * - installiere das Packet
 * - Stelle eine SVG dar (freigestellt ob über's Netzwerk oder Assets)
 */

void main() {
  // runApp(const MyApp());
  // runApp(const MyApp(child: ThemeSample()));
  // runApp(const MyApp(child: ContainerSample()));
  // runApp(const MyApp(child: GradientMagicSample()));
  // runApp(const MyApp(child: ColumnSample()));
  // runApp(const MyApp(child: TextSample()));
  // runApp(const MyApp(child: IconSample()));
  // runApp(const MyApp(child: ImageSample()));
  // runApp(const MyApp(child: ImageFitSample()));
  // runApp(const MyApp(child: SvgSample()));
  // runApp(const MyApp(child: DrawSample()));
  // runApp(const MyApp(child: ButtonSample()));
  // runApp(const MyApp(child: CustomPainterSample()));
  // runApp(const MyApp(child: TransformSample()));
  // runApp(const MyApp(child: StackSample()));
  // setPreferredOrientations();
  // runApp(const MyApp(child: MediaQuerySample()));
  // runApp(const MyApp(child: InheritedWidgetSample()));
  // runApp(const MyApp(child: FutureBuilderSample()));
  // runApp(const MyApp(child: ListViewSample()));
  // runApp(const MyApp(child: GridViewSample()));
  // runApp(const MyApp(child: SliverViewSample()));
  runApp(const MyApp(child: ListViewStatefulSample()));
}
