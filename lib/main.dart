import 'package:flutter/material.dart';
import 'package:ucas_flutter/screens/homeScreen.dart';
import 'package:ucas_flutter/screens/splashScreen.dart';

void main() => runApp(const MidtermExamApp());

class MidtermExamApp extends StatelessWidget {
  const MidtermExamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
