import 'package:flutter/material.dart';
import 'package:flutter_application_1/FormLogin.dart';
import 'package:flutter_application_1/NewPage.dart';

void main(List<String> args) {
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      checkerboardRasterCacheImages: false,
      home: Formlogin(),
    );
  }
}
