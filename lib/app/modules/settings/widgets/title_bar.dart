import 'package:feather/app/modules/settings/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleBar extends GetView<SettingsController>
    implements PreferredSizeWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('设置'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
