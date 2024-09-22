import 'package:feather/app/data/models/location.dart';
import 'package:feather/app/modules/location/repository.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  final LocationRepository repository;
  LocationController(this.repository);

  RxList<Location> provinceList = <Location>[].obs;
  RxList<Location> cityList = <Location>[].obs;

  Future<void> refreshData() async {
    getProvinceList();
  }

  back(String cityCode) {
    Get.back(result: cityCode);
  }

  selectProvince(String provinceCode) {
    getCityList(provinceCode);
  }

  getProvinceList() async {
    var result = await repository.getProvinceList();
    if (result != null) {
      provinceList.value = result;
    }
  }

  getCityList(String provinceCode) async {
    var result = await repository.getCityList(provinceCode);
    if (result != null) {
      cityList.value = result;
    }
  }
}
