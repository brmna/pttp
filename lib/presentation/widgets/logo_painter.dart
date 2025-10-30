import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: LogoPainter(),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.darkText
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final center = Offset(size.width / 2, size.height / 2);

    // Dibujar taza
    final cupPath = Path();
    cupPath.moveTo(center.dx - 30, center.dy - 10);
    cupPath.lineTo(center.dx - 30, center.dy + 20);
    cupPath.quadraticBezierTo(
      center.dx - 30, center.dy + 30,
      center.dx - 20, center.dy + 30,
    );
    cupPath.lineTo(center.dx + 20, center.dy + 30);
    cupPath.quadraticBezierTo(
      center.dx + 30, center.dy + 30,
      center.dx + 30, center.dy + 20,
    );
    cupPath.lineTo(center.dx + 30, center.dy - 10);

    canvas.drawPath(cupPath, paint);

    // Dibujar sombrero superior
    final hatPath = Path();
    hatPath.moveTo(center.dx - 40, center.dy - 10);
    hatPath.quadraticBezierTo(
      center.dx, center.dy - 50,
      center.dx + 40, center.dy - 10,
    );

    canvas.drawPath(hatPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}