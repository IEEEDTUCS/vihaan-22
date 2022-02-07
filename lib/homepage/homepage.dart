import 'package:flutter/material.dart';
import 'package:vihaan_2022/homepage/desktop_homepage.dart';
import 'package:vihaan_2022/homepage/mobile_homepage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        // ignore: missing_return
        builder: (context, constraints) {
      return (constraints.maxWidth > 1200)
          ? DesktopHomePage()
          : (constraints.maxWidth <= 1200 && constraints.maxWidth >= 800)
              ? DesktopHomePage()
              : MobileHomePage();
    });
  }
}
