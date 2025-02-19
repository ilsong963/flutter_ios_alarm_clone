import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/home.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        cupertinoOverrideTheme:
            const CupertinoThemeData(brightness: Brightness.dark),
        useMaterial3: false,
      ),
      onGenerateRoute: (_) {
        return MaterialWithModalsPageRoute(builder: (_) => Home());
      },
    );
  }
}
