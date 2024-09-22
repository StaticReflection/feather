import 'package:feather/app/modules/home/binding.dart';
import 'package:feather/app/modules/home/page.dart';
import 'package:feather/app/modules/location/binding.dart';
import 'package:feather/app/modules/location/page.dart';
import 'package:feather/app/modules/settings/binding.dart';
import 'package:feather/app/modules/settings/page.dart';
import 'package:feather/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.settings,
      page: () => const SettingsPage(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.location,
      page: () => const LocationPage(),
      binding: LocationBinding(),
    ),
  ];
}
