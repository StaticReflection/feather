import 'package:feather/app/data/providers/weather_api.dart';
import 'package:feather/app/modules/home/controller.dart';
import 'package:feather/app/modules/home/repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(WeatherApi())));
  }
}
