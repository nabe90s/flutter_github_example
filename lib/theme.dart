import 'package:flutter/material.dart';

class MyTheme {
  static get theme {
    final originalTextTheme = ThemeData.light().textTheme;
    final originalBody1 = originalTextTheme.body1;

    return ThemeData.light().copyWith(
        primaryColor: Colors.amber,
        accentColor: Colors.amberAccent,
        buttonColor: Colors.amber,
        textSelectionColor: Colors.amberAccent,
        backgroundColor: Colors.white,
        toggleableActiveColor: Colors.cyan[300],
        textTheme: originalTextTheme.copyWith(
            body1:
            originalBody1?.copyWith(decorationColor: Colors.transparent)));
  }
}
