import 'package:flutter/material.dart';

const Color _customColor = Color(0x0ff49149);

List<Color> _colorsThemes = [
  const Color.fromARGB(15, 91, 34, 196),
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  _customColor
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}): assert(selectedColor >= 0 && selectedColor < _colorsThemes.length, 'color index must be between 0 and ${_colorsThemes.length -1}');

  ThemeData theme(){
    return ThemeData(
      appBarTheme: const AppBarTheme(centerTitle: false),
      //useMaterial3: true,
      //colorSchemeSeed: _colorsThemes[selectedColor]
    );
  }
}