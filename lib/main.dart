import 'package:flutter/material.dart';
import 'package:udemy_responsive/desktop.dart';
import 'package:udemy_responsive/mobile.dart';

//// youssef_test
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.minWidth.toInt() <= 560)
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1,
                ),
                child: MobileScreen());
          return DesktopScreen();
        },
      ),
    );
  }
}
