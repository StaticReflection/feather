import 'package:feather/app/widgets/meteorological_parameter.dart';
import 'package:flutter/material.dart';

class WeatherHumidity extends StatelessWidget {
  final double? humidity;
  const WeatherHumidity({
    required this.humidity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeteorologicalParameter(
      icon: Icons.water_drop,
      value: humidity.toString(),
      unit: '%',
    );
  }
}
