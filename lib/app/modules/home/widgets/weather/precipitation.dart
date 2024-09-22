import 'package:feather/app/widgets/meteorological_parameter.dart';
import 'package:flutter/material.dart';

class WeatherPrecipitation extends StatelessWidget {
  final double? precipitation;
  const WeatherPrecipitation({
    required this.precipitation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeteorologicalParameter(
      icon: Icons.water,
      value: precipitation.toString(),
      unit: 'mm',
    );
  }
}
