import 'package:feather/app/data/services/settings/service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InitService {
  static init() async {
    await _initGetStorage();
  }

  static _initGetStorage() async {
    await GetStorage.init();
    await Get.putAsync(() => SettingsService().init());
  }
}
