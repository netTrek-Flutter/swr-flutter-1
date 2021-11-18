import 'package:flutter/material.dart';

enum MyPainterForm {
  rect,
  circle,
  oval,
}

class MyPainter extends CustomPainter {
  final double scalar;
  final Color color;
  final Paint _paint;
  final MyPainterForm form;

  MyPainter(
      {required this.color, this.scalar = 1, this.form = MyPainterForm.rect})
      : _paint = Paint()
          ..strokeWidth = 5
          ..style = PaintingStyle.fill
          ..color = color;

  @override
  void paint(Canvas canvas, Size size) {
    print(form);
    switch (form) {
      case MyPainterForm.oval:
        drawOval(canvas, size);
        break;
      case MyPainterForm.circle:
        drawCircle(canvas, size);
        break;
      default:
        drawRect(canvas, size);
        break;
    }
  }

  void drawCircle(Canvas canvas, Size size) {
    canvas.drawCircle(
      size.center(const Offset(0, 0)),
      size.shortestSide * 0.5 * scalar,
      _paint,
    );
  }

  void drawOval(Canvas canvas, Size size) {
    canvas.drawOval(
        Rect.fromCenter(
          center: size.center(Offset.zero),
          width: size.width * scalar,
          height: size.height * scalar,
        ),
        _paint);
  }

  void drawRect(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromCenter(
          center: size.center(Offset.zero),
          width: size.width * scalar,
          height: size.height * scalar,
        ),
        _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }

  @override
  bool operator ==(Object other) {
    return (other is MyPainter) &&
        (other.scalar == scalar) &&
        (other.color == color);
  }

  @override
  int get hashCode => super.hashCode;
}

class CustomPainterSample extends StatelessWidget {
  const CustomPainterSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          PaintForm(),
          PaintForm(
            form: MyPainterForm.oval,
            color: Colors.green,
          ),
          PaintForm(
            form: MyPainterForm.circle,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class PaintForm extends StatelessWidget {
  final MaterialColor color;
  final MyPainterForm form;

  const PaintForm({
    Key? key,
    this.color = Colors.red,
    this.form = MyPainterForm.rect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(
        color: color,
        form: form,
      ),
      foregroundPainter: MyPainter(
        color: Colors.black.withOpacity(0.2),
        form: form,
        scalar: .75,
      ),
      child: SizedBox(
        width: 300,
        height: 180,
        child: Center(
          child: Text(form.toString()),
        ),
      ),
    );
  }
}
