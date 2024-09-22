import 'package:feather/app/data/models/weather_forecast.dart';
import 'package:feather/app/data/models/weather_forecast_video.dart';
import 'package:feather/app/data/models/weather_now.dart';
import 'package:feather/app/modules/home/repository.dart';
import 'package:feather/routes/routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);

  Rx<WeatherNow?> weatherNow = Rx<WeatherNow?>(null);
  Rx<List<WeatherForecast>?> weatherForecast = Rx<List<WeatherForecast>?>(null);
  Rx<List<WeatherForecastVideo>?> weatherForecastVideoList =
      Rx<List<WeatherForecastVideo>?>(null);

  int _cityCode = 54511;

  @override
  onInit() {
    super.onInit();
    refreshAll();
  }

  selectLocation() async {
    var result = await Get.toNamed(Routes.location);
    if (result != null) {
      _cityCode = int.tryParse(result) ?? 54511;
    } else {}
    refreshAll();
  }

  settings() {
    Get.toNamed(Routes.settings);
  }

  // data
  Future<void> refreshAll() async {
    await getWeatherNow();
    await getWeatherForecast();
    await getWeatherForecastVideo();
  }

  Future<void> getWeatherNow() async {
    weatherNow.value = await repository.getWeatherNow(_cityCode);
  }

  Future<void> getWeatherForecast() async {
    weatherForecast.value = await repository.getWeatherForecast(_cityCode);
  }

  Future<void> getWeatherForecastVideo() async {
    weatherForecastVideoList.value = await repository.getWeatherForecastVideo();
  }
}
