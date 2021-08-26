import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.9947312, size.height * 0.6767182),
        Offset(size.width * 0.3026995, size.height * 0.3339619),
        [Color(0xffF3EDE4).withOpacity(1), Color(0xffF3EDE4).withOpacity(0)],
        [0, 1]);
    canvas.drawCircle(Offset(size.width * 0.4304661, size.height * 0.4156033),
        size.width * 0.5642634, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7273077, size.height * 0.1664175);
    path_0.cubicTo(
        size.width * 0.7206538,
        size.height * 0.1526343,
        size.width * 0.7022308,
        size.height * 0.09991327,
        size.width * 0.6876154,
        size.height * 0.03506814);
    path_0.cubicTo(
        size.width * 0.6756154,
        size.height * -0.01838330,
        size.width * 0.7477692,
        size.height * -0.06577257,
        size.width * 0.8414231,
        size.height * -0.06577257);
    path_0.lineTo(size.width * 0.8948846, size.height * -0.06577257);
    path_0.cubicTo(
        size.width * 0.9808077,
        size.height * -0.06577257,
        size.width * 1.050385,
        size.height * -0.02559558,
        size.width * 1.050000,
        size.height * 0.02382920);
    path_0.cubicTo(
        size.width * 1.048077,
        size.height * 0.2753341,
        size.width * 1.035538,
        size.height * 0.6578783,
        size.width * 0.9954231,
        size.height * 0.6902898);
    path_0.cubicTo(
        size.width * 0.9618846,
        size.height * 0.7173695,
        size.width * 0.9248462,
        size.height * 0.7727456,
        size.width * 0.8996923,
        size.height * 0.8157323);
    path_0.cubicTo(
        size.width * 0.8697692,
        size.height * 0.8668164,
        size.width * 0.8174615,
        size.height * 0.9127456,
        size.width * 0.7467692,
        size.height * 0.9481217);
    path_0.cubicTo(
        size.width * 0.7446538,
        size.height * 0.9491836,
        size.width * 0.7425385,
        size.height * 0.9502235,
        size.width * 0.7404615,
        size.height * 0.9512190);
    path_0.cubicTo(
        size.width * 0.6956923,
        size.height * 0.9729004,
        size.width * 0.6413846,
        size.height * 0.9871040,
        size.width * 0.5837308,
        size.height * 0.9928562);
    path_0.cubicTo(
        size.width * 0.1219604,
        size.height * 1.038874,
        size.width * 0.004268077,
        size.height * 0.8509535,
        size.width * 0.003883462,
        size.height * 0.7442500);
    path_0.cubicTo(
        size.width * 0.003883462,
        size.height * 0.7423473,
        size.width * 0.003768081,
        size.height * 0.7404447,
        size.width * 0.003575773,
        size.height * 0.7385420);
    path_0.cubicTo(
        size.width * -0.001847304,
        size.height * 0.6774358,
        size.width * 0.07276808,
        size.height * 0.5451128,
        size.width * 0.4175000,
        size.height * 0.4818385);
    path_0.cubicTo(
        size.width * 0.7677308,
        size.height * 0.4175907,
        size.width * 0.7700000,
        size.height * 0.2447810,
        size.width * 0.7273077,
        size.height * 0.1664175);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.1058415, size.height * 0.8845885),
        Offset(size.width * 1.636008, size.height * -27.61062),
        [Color(0xffF2EDE4).withOpacity(1), Color(0xffF2EDE4).withOpacity(0)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2070752, size.height * 1.011324);
    path_0.cubicTo(
        size.width * 0.2143437,
        size.height * 1.028027,
        size.width * 0.2344702,
        size.height * 1.091914,
        size.width * 0.2504366,
        size.height * 1.170493);
    path_0.cubicTo(
        size.width * 0.2635454,
        size.height * 1.235265,
        size.width * 0.1847223,
        size.height * 1.292692,
        size.width * 0.08241092,
        size.height * 1.292692);
    path_0.lineTo(size.width * 0.02400777, size.height * 1.292692);
    path_0.cubicTo(
        size.width * -0.06985756,
        size.height * 1.292692,
        size.width * -0.1458664,
        size.height * 1.244005,
        size.width * -0.1454462,
        size.height * 1.184113);
    path_0.cubicTo(
        size.width * -0.1433454,
        size.height * 0.8793405,
        size.width * -0.1296475,
        size.height * 0.4157748,
        size.width * -0.08582395,
        size.height * 0.3764987);
    path_0.cubicTo(
        size.width * -0.04918529,
        size.height * 0.3436836,
        size.width * -0.008723151,
        size.height * 0.2765791,
        size.width * 0.01875584,
        size.height * 0.2244879);
    path_0.cubicTo(
        size.width * 0.05144496,
        size.height * 0.1625847,
        size.width * 0.1085878,
        size.height * 0.1069276,
        size.width * 0.1858147,
        size.height * 0.06405925);
    path_0.cubicTo(
        size.width * 0.1881256,
        size.height * 0.06277212,
        size.width * 0.1904366,
        size.height * 0.06151233,
        size.width * 0.1927055,
        size.height * 0.06030590);
    path_0.cubicTo(
        size.width * 0.2416130,
        size.height * 0.03403244,
        size.width * 0.3009408,
        size.height * 0.01682054,
        size.width * 0.3639239,
        size.height * 0.009850027);
    path_0.cubicTo(
        size.width * 0.8683782,
        size.height * -0.04591394,
        size.width * 0.9969496,
        size.height * 0.1818072,
        size.width * 0.9973697,
        size.height * 0.3111099);
    path_0.cubicTo(
        size.width * 0.9973697,
        size.height * 0.3134155,
        size.width * 0.9974958,
        size.height * 0.3157212,
        size.width * 0.9977059,
        size.height * 0.3180268);
    path_0.cubicTo(
        size.width * 1.003630,
        size.height * 0.3920751,
        size.width * 0.9221176,
        size.height * 0.5524236,
        size.width * 0.5455210,
        size.height * 0.6290992);
    path_0.cubicTo(
        size.width * 0.1629155,
        size.height * 0.7069544,
        size.width * 0.1604366,
        size.height * 0.9163646,
        size.width * 0.2070752,
        size.height * 1.011324);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.8372017, size.height * 0.04687587),
        Offset(size.width * -223.1336, size.height * 2.880456),
        [Color(0xffF2EDE4).withOpacity(1), Color(0xffFAF7F2).withOpacity(0)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.7713833, size.height * 1.059748),
        Offset(size.width * 0.4444894, size.height * 0.5003478),
        [Color(0xffF3EDE4).withOpacity(1), Color(0xffF3EDE4).withOpacity(0)],
        [0, 1]);
    canvas.drawCircle(Offset(size.width * 0.7423833, size.height * 0.5808696),
        size.width * 0.5830722, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
