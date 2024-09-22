import 'dart:convert';

import 'package:feather/app/data/models/weather_forecast_video.dart';
import 'package:feather/core/services/log.dart';
import 'package:feather/core/utils/request.dart';
import 'package:feather/core/values/hosts.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

import 'package:feather/app/data/models/weather_forecast.dart';
import 'package:feather/app/data/models/weather_now.dart';

class WeatherApi {
  WeatherApi();

  Future<WeatherNow?> getWeatherNow(int cityCode) async {
    try {
      Request request = Request(host: Hosts.weatherNow(cityCode));
      Map map = await request.fetch();
      return WeatherNow(
        id: map['data']['location']['id'],
        name: map['data']['location']['name'],
        path: map['data']['location']['path'],
        precipitation: map['data']['now']['precipitation'],
        temperature: map['data']['now']['temperature'],
        pressure: map['data']['now']['pressure'],
        humidity: map['data']['now']['humidity'],
        windDirection: map['data']['now']['windDirection'],
        windDirectionDegree: map['data']['now']['windDirectionDegree'],
        windSpeed: map['data']['now']['windSpeed'],
        windScale: map['data']['now']['windScale'],
      );
    } catch (e) {
      log.error(e);
      return null;
    }
  }

  Future<List<WeatherForecast>?> getWeatherForecast(int cityCode) async {
    try {
      Request request = Request(host: Hosts.weatherForecast(cityCode));
      Document document = parse(await request.fetch());
      List<Element> elements = document.getElementById('dayList')!.children;

      List<WeatherForecast> weatherForecast = [];
      for (var element in elements) {
        weatherForecast.add(WeatherForecast(
          dayOfWeek: RegExp(r'[\u4e00-\u9fa5]+')
              .firstMatch(element
                  .getElementsByClassName('day-item')[0]
                  .innerHtml
                  .trim())!
              .group(0)!,
          date: RegExp(r'[\d\/]+')
              .firstMatch(element
                  .getElementsByClassName('day-item')[0]
                  .innerHtml
                  .trim())!
              .group(0)!,
          maxTemperature: double.parse(RegExp(r'(\d+)')
              .firstMatch(element
                  .getElementsByClassName('day-item')[5]
                  .getElementsByClassName('high')
                  .first
                  .innerHtml
                  .trim())!
              .group(1)!),
          minTemperature: double.parse(RegExp(r'(\d+)')
              .firstMatch(element
                  .getElementsByClassName('day-item')[5]
                  .getElementsByClassName('low')
                  .first
                  .innerHtml
                  .trim())!
              .group(1)!),
          dayWeather:
              element.getElementsByClassName('day-item')[2].innerHtml.trim(),
          dayWindDirection:
              element.getElementsByClassName('day-item')[3].innerHtml.trim(),
          dayWindScale:
              element.getElementsByClassName('day-item')[4].innerHtml.trim(),
          nightWeather:
              element.getElementsByClassName('day-item')[7].innerHtml.trim(),
          nightWindDirection:
              element.getElementsByClassName('day-item')[8].innerHtml.trim(),
          nightWindScale:
              element.getElementsByClassName('day-item')[9].innerHtml.trim(),
        ));
      }
      return weatherForecast;
    } catch (e) {
      log.error(e);
      return null;
    }
  }

  Future<List<WeatherForecastVideo>?> getWeatherForecastVideoList() async {
    try {
      Request request = Request(host: Hosts.weatherForecastVideoList);
      RegExp pattern = RegExp(r'getLbDatas\((.*?)\)');

      RegExpMatch regExpMatch = pattern.firstMatch(await request.fetch())!;
      List list = jsonDecode(regExpMatch.group(1)!)['data'];

      List<WeatherForecastVideo> weatherForecastVideoList = [];

      for (var element in list) {
        weatherForecastVideoList.add(WeatherForecastVideo(
          id: element['id'],
          url: element['url'],
          pubDate: element['pubDate'],
          title: element['title'],
          type: element['type'],
          summary: element['summary'],
          updateTime: element['updateTime'],
        ));
      }

      return weatherForecastVideoList;
    } catch (error) {
      log.error(error);
      return null;
    }
  }
}
