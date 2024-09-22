import 'package:feather/core/values/settings_keys.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsService extends GetxService {
  late GetStorage box;
  Future<SettingsService> init() async {
    box = GetStorage();

    await box.writeIfNull(SettingsKeys.cityCode, SettingsKeysDefault.cityCode);

    return this;
  }

  setCityCode(int cityCode) async {
    await box.write(SettingsKeys.cityCode, cityCode);
  }
}
