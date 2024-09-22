import 'package:feather/app/data/providers/weather_api.dart';
import 'package:feather/app/data/services/weather/repository.dart';
import 'package:get/get.dart';

class WeatherService extends GetxService {
  late WeatherRepository repository;

  Future<WeatherService> init() async {
    repository = WeatherRepository(WeatherApi());
    return this;
  }
}
