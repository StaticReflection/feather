import 'package:feather/app/widgets/meteorological_parameter.dart';
import 'package:flutter/material.dart';

class WeatherPressure extends StatelessWidget {
  final double? pressure;
  const WeatherPressure({
    required this.pressure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MeteorologicalParameter(
      icon: Icons.av_timer,
      value: pressure.toString(),
      unit: 'hPa',
    );
  }
}
