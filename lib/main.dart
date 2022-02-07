import 'package:flutter/material.dart';
import 'package:vihaan_2022/homepage/homepage.dart';

import 'homepage/homepage.dart';

void main() {
  runApp(const Vihaan2022());
}

class Vihaan2022 extends StatelessWidget {
  const Vihaan2022({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NunitoSans'),
      title: 'Vihaan',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
      },
    );
  }
}
