import 'package:feather/app/widgets/meteorological_parameter.dart';
import 'package:flutter/material.dart';

class WeatherWindDirectionDegree extends StatelessWidget {
  final double? windDirectionDegree;
  const WeatherWindDirectionDegree({
    required this.windDirectionDegree,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeteorologicalParameter(
      icon: Icons.air,
      value: windDirectionDegree.toString(),
      unit: '°',
    );
  }
}
