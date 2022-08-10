import 'package:flutter/material.dart';
import 'package:instagram_clone/model/constant/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreen;
  final Widget mobileScreen;
  const ResponsiveLayout(
      {Key? key, required this.webScreen, required this.mobileScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //webscrenLayout
        if (constraints.maxWidth > WebScreenSize) {
          return webScreen;
        }
        //mobileScreenLayout
        else {
          return mobileScreen;
        }
      },
    );
  }
}
