import 'package:flutter/material.dart';

import '../splash/splash.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "DevQuiz",
        home: SplashPage());
  }
}
