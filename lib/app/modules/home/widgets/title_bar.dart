import 'package:feather/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleBar extends GetView<HomeController> implements PreferredSizeWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () => controller.selectLocation()),
        IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => controller.settings()),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
