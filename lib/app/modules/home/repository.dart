import 'package:feather/app/data/models/weather_forecast.dart';
import 'package:feather/app/data/models/weather_forecast_video.dart';
import 'package:feather/app/data/models/weather_now.dart';
import 'package:feather/app/data/providers/weather_api.dart';

class HomeRepository {
  final WeatherApi _api;

  HomeRepository(this._api);

  Future<WeatherNow?> getWeatherNow(int cityCode) =>
      _api.getWeatherNow(cityCode);
  Future<List<WeatherForecast>?> getWeatherForecast(int cityCode) =>
      _api.getWeatherForecast(cityCode);
  Future<List<WeatherForecastVideo>?> getWeatherForecastVideo() =>
      _api.getWeatherForecastVideoList();
}
