import 'package:flutter/material.dart';

const primaryColor = Color(0xFF4b5c63);

/// Retorna branco para cores de fundo escuras e primaryColor (ou preto) para cores claras
Color getContrastingTextColor(
  Color backgroundColor, {
  Color defaultLightColor = primaryColor,
}) {
  final brightness = ThemeData.estimateBrightnessForColor(backgroundColor);
  return brightness == Brightness.dark ? Colors.white : defaultLightColor;
}
