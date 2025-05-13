import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ResponsivePlayerPainter extends CustomPainter {
  final double progress;
  final ui.Image image;

  ResponsivePlayerPainter({required this.image, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 4
          ..shader = ui.Gradient.linear(
            Offset(0, 0),
            Offset(size.width, size.height),
            const [
              ui.Color.fromRGBO(219, 40, 168, 1),
              ui.Color.fromRGBO(146, 38, 209, 1),
              ui.Color.fromRGBO(156, 29, 202, 1),
            ],
            [0.0, 0.5, 1.0],
          )
          ..style = PaintingStyle.fill;
    print("height : ${size.height} / width : ${size.width}");
    double radius = size.height * 0.2;
    double dipStartX = size.height + size.height * 0.32;
    // size.width * 0.35 > (size.height + size.height * 0.3) ? size.width * 0.35 : size.height + size.height * 0.3;

    Path path = Path();
    path.moveTo(size.width * 0.3939, 0);
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height);
    path.lineTo(radius, size.height);
    //
    path.quadraticBezierTo(-5, size.height * 0.97, 0, size.height * 0.8);
    path.quadraticBezierTo(dipStartX * 0.039, size.height * 0.68, dipStartX * 0.312, size.height * 0.74);
    // path.quadraticBezierTo(size.width * 0.01, size.height * 0.68, size.width * 0.08, size.height * 0.74);
    // path.quadraticBezierTo(size.width * 0.13, size.height * 0.65, size.width * 0.113, size.height * 0.7);
    path.quadraticBezierTo(dipStartX * 0.78, size.height * 0.75, dipStartX * 0.84, size.height * 0.2);
    // path.quadraticBezierTo(dipStartX * 0.75, size.height * 0.75, dipStartX * 0.82, size.height * 0.2);
    path.quadraticBezierTo(dipStartX * 0.86, 0, dipStartX, 0);
    path.close();
    canvas.drawPath(path, paint);

    // Circle position & radius
    final Offset center = Offset(size.height / 2, size.height * 0.13);
    final double circleRadius = size.height / 2.2;

    // ⭕ Draw circular clipped image
    final Rect imageRect = Rect.fromCircle(center: center, radius: circleRadius);
    canvas.save();
    canvas.clipPath(Path()..addOval(imageRect));
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
      imageRect,
      Paint(),
    );
    canvas.restore();

    // ⏱ Draw circular progress background
    Paint durationPaint =
        Paint()
          ..color = const Color(0xFFFFB1CD)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: circleRadius + 3),
      -90 * 3.1416 / 180,
      2 * 3.1416 * 0.99,
      false,
      durationPaint,
    );

    // 🔴 Progress foreground
    Paint progressPaint =
        Paint()
          ..color = const Color(0xFFFF3780)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: circleRadius + 3),
      -90 * 3.1416 / 180,
      2 * 3.1416 * progress,
      false,
      progressPaint,
    );

    // 🔲 Outer white stroke
    Paint strokePaint =
        Paint()
          ..strokeWidth = 4
          ..color = Colors.white
          ..style = PaintingStyle.stroke;

    canvas.drawPath(path, strokePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class PlayerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..strokeWidth = 4
          ..shader = ui.Gradient.linear(
            Offset(0, 0),
            Offset(size.width, size.height),
            [
              const Color.fromRGBO(219, 40, 169, 0.75),
              Color.fromRGBO(145, 38, 209, 0.75),
              const Color.fromRGBO(157, 29, 202, 0.75),
            ],
            [0.0, 0.5, 1.0],
          )
          ..style = PaintingStyle.stroke;

    final double radius = 20;
    final Path path = Path();

    // Rounded rectangle using path
    path.moveTo(130, 0);
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height);
    path.lineTo(radius, size.height);

    path.quadraticBezierTo(0, size.height, 5, size.height - 17);
    path.quadraticBezierTo(15, size.height - 35, 40, size.height - 30);
    path.quadraticBezierTo(93, 80, 108, 20);
    path.quadraticBezierTo(112, 0, 130, 0);

    path.close();
    canvas.drawPath(path, paint);
    //
    //___________________________
    //
    Paint circlePaint =
        Paint()
          ..color = Colors.orange
          ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(50, 13), size.height / 2, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class TitlePainter extends CustomPainter {
  FontWeight? fontWeight;
  final String text;
  TitlePainter({required this.text, this.fontWeight});
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint();
    // paint.shader = ui.Gradient.linear(
    //   Offset(0, 12), // Start at middle-left
    //   Offset(220, 12),
    //   [Color.fromRGBO(146, 47, 245, 1), Color.fromRGBO(219, 40, 169, 1)],
    // );
    // canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
    //------------------------------------
    TextPainter lengthTextPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(fontSize: size.height / 1.5, fontWeight: fontWeight ?? FontWeight.w400),
      ),
      textDirection: TextDirection.ltr,
    );
    lengthTextPainter.layout();
    print("length : ${lengthTextPainter.width}");
    //-------------------------------
    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: size.height / 1.5,
          fontWeight: fontWeight ?? FontWeight.w400,
          foreground:
              Paint()
                ..shader = ui.Gradient.linear(
                  Offset(0, size.height / 2), // Start at middle-left
                  Offset(lengthTextPainter.width, size.height / 2),
                  [Color.fromRGBO(146, 47, 245, 1), Color.fromRGBO(219, 40, 169, 1)],
                ),
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(0, 0));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint()..color = Colors.yellow;

    var textPainter = TextPainter(
      text: TextSpan(
        text: "Melodify",
        style: TextStyle(
          fontSize: size.height / 1.5,
          fontWeight: FontWeight.bold,
          foreground:
              Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 5
                ..color = const Color.fromARGB(255, 243, 33, 180),
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    Offset center = Offset(
      (size.width - textPainter.width) / 2, // Center horizontally
      (size.height - textPainter.height) / 2, // Center vertically
    );
    textPainter.paint(canvas, center);
    //--------------
    var frontTextPainter = TextPainter(
      text: TextSpan(
        text: "Melodify",
        style: TextStyle(color: Colors.black, fontSize: size.height / 1.5, fontWeight: FontWeight.bold),
      ),
      textDirection: TextDirection.ltr,
    );
    frontTextPainter.layout();
    Offset frontenter = Offset(
      (size.width - frontTextPainter.width) / 2, // Center horizontally
      (size.height - frontTextPainter.height) / 2, // Center vertically
    );
    frontTextPainter.paint(canvas, frontenter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PersonIconPainter extends CustomPainter {
  final IconData icon;
  PersonIconPainter({required this.icon});
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint();
    // paint.shader = ui.Gradient.linear(
    //   Offset(24, 24),
    //   Offset(24, 48),
    //   [Color.fromRGBO(146, 47, 245, 1), Color.fromRGBO(219, 40, 169, 1)], // Gradient colors
    // );
    // canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
    //
    // final icon = Icons.person;
    // print(size);
    // Define the gradient
    final gradient = ui.Gradient.linear(
      Offset(24, 18),
      Offset(24, 48),
      [Color.fromRGBO(146, 47, 245, 1), Color.fromRGBO(219, 40, 169, 1)], // Gradient colors
    );

    // **Border Stroke**
    final borderPainter = TextPainter(
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: size.width * 0.7,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          foreground:
              Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth =
                    6 // Border thickness
                ..color = const ui.Color.fromARGB(255, 255, 255, 255), // Border color
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    borderPainter.layout();
    borderPainter.paint(canvas, Offset(7, 6));

    // **Fill with Gradient**
    final gradientPainter = TextPainter(
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: size.width * 0.7,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          foreground: Paint()..shader = gradient, // Apply gradient as fill
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    gradientPainter.layout();
    gradientPainter.paint(canvas, Offset(7, 6));
    //
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
