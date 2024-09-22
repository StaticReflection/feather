import 'package:feather/app/widgets/meteorological_parameter.dart';
import 'package:flutter/material.dart';

class WeatherWindSpeed extends StatelessWidget {
  final double? windSpeed;
  const WeatherWindSpeed({
    required this.windSpeed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeteorologicalParameter(
      icon: Icons.speed,
      value: windSpeed.toString(),
      unit: 'm/s',
    );
  }
}
