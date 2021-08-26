import 'package:flutter/material.dart';
import 'package:meditation_app/screen/musicv2/components/customPainter.dart';

class BackGround extends StatelessWidget {
  final Size size;
  final Widget child;
  const BackGround({ Key? key, required this.child, required this.size }) : super(key: key);

  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: CustomPaint(
                size: Size(
                    size.width * 0.446908212560,
                    (size.width * 0.446908212560 * 0.9731182795698925)
                        .toDouble()),
                painter: RPSCustomPainter1(),
              )),
          Positioned(
              top: 0,
              right: 0,
              child: CustomPaint(
                size: Size(size.width * 0.625942,
                    (size.width * 0.625942 * 1.7384615384615385).toDouble()),
                painter: RPSCustomPainter2(),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomPaint(
                size: Size(size.width * 0.5737198,
                    (size.width * 0.5737198 * 1.5672268907563025).toDouble()),
                painter: RPSCustomPainter4(),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: CustomPaint(
                size: Size(
                    size.width * 0.4343961352657,
                    (size.width * 0.4343961352657 * 1.2777777777777777)
                        .toDouble()),
                painter: RPSCustomPainter5(),
              )),
          child,
        ],
      ),
    );
  }
}