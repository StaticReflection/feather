import 'package:feather/app/widgets/meteorological_parameter.dart';
import 'package:flutter/material.dart';

class WeatherWindDirection extends StatelessWidget {
  final String? windDirection;
  final String? windScale;

  const WeatherWindDirection({
    required this.windDirection,
    required this.windScale,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeteorologicalParameter(
      icon: Icons.switch_access_shortcut_add_outlined,
      value: windDirection,
      unit: windScale,
    );
  }
}
