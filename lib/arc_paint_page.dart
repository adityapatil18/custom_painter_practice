import 'package:flutter/material.dart';

class ArcPaintPage extends StatefulWidget {
  const ArcPaintPage({super.key});

  @override
  State<ArcPaintPage> createState() => _ArcPaintPageState();
}

class _ArcPaintPageState extends State<ArcPaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: 300,
          height: 300,
          child: CustomPaint(
            painter: ArcPainter(),
          ),
        ),
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.orange
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.2, size.height * 0.2);
    arc1.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.2),
      radius: Radius.circular(150),
      clockwise: false,
    );
    canvas.drawPath(arc1, paint);

    final arc2 = Path();
    arc2.moveTo(size.width * 0.2, size.height * 0.8);
    arc2.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.8),
      radius: Radius.circular(150),
    );

    canvas.drawPath(arc2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
