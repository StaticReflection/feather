import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:feather/app/modules/home/controller.dart';
import 'package:feather/app/data/enum/temperature_unit.dart';
import 'package:feather/app/modules/home/widgets/meteorological_parameters.dart';
import 'package:feather/app/modules/home/widgets/weather_forecast.dart';
import 'package:feather/app/modules/home/widgets/weather_forecast_video.dart';
import 'package:feather/app/modules/home/widgets/location.dart';
import 'package:feather/app/modules/home/widgets/weather/temperature.dart';
import 'package:feather/app/modules/home/widgets/title_bar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const TitleBar(),
      body: RefreshIndicator(
        onRefresh: () async => await controller.refreshAll(),
        child: ListView(
          padding: const EdgeInsets.only(left: 16, right: 16),
          children: [
            InkWell(
                onTap: () => controller.selectLocation(),
                child: Obx(() => Location(
                      location: controller.weatherNow.value?.path,
                      weather:
                          controller.weatherForecast.value?.first.dayWeather,
                    ))),
            Obx(() => WeatherTemperature(
                  temperature: controller.weatherNow.value?.temperature,
                  temperatureUnit: TemperatureUnit.celsius,
                  maxTemperature:
                      controller.weatherForecast.value?.first.maxTemperature,
                  minTemperature:
                      controller.weatherForecast.value?.first.minTemperature,
                )),
            Obx(() {
              return MeteorologicalParameters(
                pressure: controller.weatherNow.value?.pressure,
                precipitation: controller.weatherNow.value?.precipitation,
                humidity: controller.weatherNow.value?.humidity,
                temperatureUnit: TemperatureUnit.celsius,
                windDirectionDegree:
                    controller.weatherNow.value?.windDirectionDegree,
                windDirection: controller.weatherNow.value?.windDirection,
                windScale: controller.weatherNow.value?.windScale,
                windSpeed: controller.weatherNow.value?.windSpeed,
              );
            }),
            Obx(() =>
                Forecast(weatherForecast: controller.weatherForecast.value)),
            Obx(
              () => WeatherForecastVideo(
                title: controller.weatherForecastVideoList.value?.first.title,
                pubDate:
                    controller.weatherForecastVideoList.value?.first.pubDate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
