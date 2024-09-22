import 'package:feather/app/data/providers/location_api.dart';
import 'package:feather/app/modules/location/controller.dart';
import 'package:feather/app/modules/location/repository.dart';
import 'package:get/get.dart';

class LocationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(() => LocationController(LocationRepository(LocationApi())));
  }
}
