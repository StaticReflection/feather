import 'package:feather/app/data/enum/temperature_unit.dart';
import 'package:feather/app/modules/home/widgets/weather/humidity.dart';
import 'package:feather/app/modules/home/widgets/weather/precipitation.dart';
import 'package:feather/app/modules/home/widgets/weather/pressure.dart';
import 'package:feather/app/modules/home/widgets/weather/wind_direction.dart';
import 'package:feather/app/modules/home/widgets/weather/wind_direction_degree.dart';
import 'package:feather/app/modules/home/widgets/weather/wind_speed.dart';
import 'package:flutter/material.dart';

class MeteorologicalParameters extends StatelessWidget {
  final double? pressure;
  final double? precipitation;
  final double? humidity;
  final TemperatureUnit temperatureUnit;
  final double? windDirectionDegree;
  final String? windDirection;
  final String? windScale;
  final double? windSpeed;

  const MeteorologicalParameters({
    required this.pressure,
    required this.precipitation,
    required this.humidity,
    required this.temperatureUnit,
    required this.windDirectionDegree,
    required this.windDirection,
    required this.windScale,
    required this.windSpeed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        WeatherPressure(pressure: pressure),
        WeatherHumidity(humidity: humidity),
        WeatherPrecipitation(precipitation: precipitation),
        WeatherWindDirectionDegree(windDirectionDegree: windDirectionDegree),
        WeatherWindDirection(
            windDirection: windDirection, windScale: windScale),
        WeatherWindSpeed(windSpeed: windSpeed),
      ],
    );
  }
}
