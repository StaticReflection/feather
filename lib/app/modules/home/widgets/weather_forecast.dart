import 'package:feather/app/data/models/weather_forecast.dart';
import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {
  final List<WeatherForecast>? weatherForecast;
  const Forecast({
    this.weatherForecast,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: weatherForecast?.map((forecast) {
                    return Card.outlined(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Text(forecast.dayOfWeek),
                                Text(forecast.date),
                                Text(forecast.maxTemperature.toString()),
                                Text(forecast.minTemperature.toString()),
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: [
                                const Icon(Icons.light_mode),
                                Text(forecast.dayWeather),
                                Text(forecast.dayWindDirection),
                                Text(forecast.dayWindScale),
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: [
                                const Icon(Icons.dark_mode),
                                Text(forecast.nightWeather),
                                Text(forecast.nightWindDirection),
                                Text(forecast.nightWindScale),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList() ??
                  [])),
    );
  }
}
