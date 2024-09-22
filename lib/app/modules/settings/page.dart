import 'package:feather/app/modules/settings/controller.dart';
import 'package:feather/app/modules/settings/widgets/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TitleBar(),
    );
  }
}
