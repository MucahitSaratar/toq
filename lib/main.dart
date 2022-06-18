import 'package:flutter/material.dart';
import 'package:toq/uiPages/splash_screen.dart';

void main() {
  runApp(const BaseApplication());
}

class BaseApplication extends StatelessWidget {
  const BaseApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TOQ',
        home: SplashScreen(),
      );
}
