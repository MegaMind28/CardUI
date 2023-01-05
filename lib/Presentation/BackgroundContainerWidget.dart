import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CurveClipperWidget.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff4dc0f6),
                Color(0xff2d8eee)
              ]
          ),
        ),
        //  color: Colors.red,
        height: 350.0.h,
      ),
    );
  }
}