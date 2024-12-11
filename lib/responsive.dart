import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget mobileLarge;
  final Widget tablet;
  final Widget desktop;
  final Widget desktop1;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.mobileLarge,
    required this.tablet,
    required this.desktop,
    required this.desktop1,
  }) : super(key: key);

  // Static helper methods to determine device type
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1024;

  static bool isDesktop1(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1024 && width < 1150;
  }

  static bool isDesktop3(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1150 && width < 1350;
  }
  static bool isDesktop2(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1350 && width < 1450;
  }

  static bool isDesktop4(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1024 && width < 1510;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;



  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >= 1450) {
      return desktop; // Desktop layout
    }
    else if (_size.width >= 1024 && desktop1 !=null) {
      return desktop1; // Desktop layout
    }
    else if (_size.width >= 700 && tablet != null) {
      return tablet; // Tablet layout
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge; // Large mobile layout
    } else {
      return mobile; // Default mobile layout
    }
  }
}
