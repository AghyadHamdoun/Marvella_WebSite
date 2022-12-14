import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppResponsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const AppResponsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  static bool isMobile(context) => MediaQuery.of(context).size.width < 750;

  static bool isTablet(context) =>
      MediaQuery.of(context).size.width >= 750 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(context) => MediaQuery.of(context).size.width >= 1100 ;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
