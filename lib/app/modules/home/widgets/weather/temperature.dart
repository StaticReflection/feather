import 'package:feather/app/data/enum/temperature_unit.dart';
import 'package:flutter/material.dart';

class WeatherTemperature extends StatelessWidget {
  final double? temperature;
  final double? maxTemperature;
  final double? minTemperature;
  final TemperatureUnit temperatureUnit;

  const WeatherTemperature({
    required this.temperature,
    required this.maxTemperature,
    required this.minTemperature,
    required this.temperatureUnit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
          text: '$temperature$temperatureUnit',
          style: Theme.of(context).textTheme.displayLarge,
        )),
        Text(
            '最低$minTemperature$temperatureUnit 最高$maxTemperature$temperatureUnit'),
      ],
    );
  }
}
