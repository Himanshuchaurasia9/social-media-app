import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({super.key, required this.desktop, required this.tablet, required this.mobile});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 780;

  /// tablet >= 650
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 780 && MediaQuery.of(context).size.width <1100;

  ///desktop >= 1100
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop;
      } else if (constraints.maxWidth >= 780) {
        return tablet ?? mobile;
      } else {
        return mobile;
      }
    });
  }
}