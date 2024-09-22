import 'package:feather/core/services/init.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:feather/core/theme/app_theme.dart';
import 'package:feather/routes/pages.dart';
import 'package:feather/routes/routes.dart';
import 'package:feather/app/modules/home/binding.dart';

void main() async {
  await InitService.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme
      themeMode: ThemeMode.system,
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      // routes
      initialBinding: HomeBinding(),
      initialRoute: Routes.home,
      getPages: AppPages.pages,
    );
  }
}
