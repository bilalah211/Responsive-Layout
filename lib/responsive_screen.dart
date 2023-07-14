import 'package:flutter/material.dart';
import 'package:responsivepractice/desktop_screen.dart';
import 'package:responsivepractice/mobile_screen.dart';
import 'package:responsivepractice/tablet_screen.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  ResponsiveLayout(
      {required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const MobileScaffold();
      } else if (constraints.maxWidth < 1100) {
        return const TabletScaffold();
      } else {
        return const DesktopScaffold();
      }
    });
  }
}
