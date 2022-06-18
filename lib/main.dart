import 'package:flutter/material.dart';

void main() {
  runApp(const BaseApplication());
}

class BaseApplication extends StatelessWidget {
  const BaseApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'TOQ',
        home: null,
      );
}
