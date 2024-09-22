import 'package:feather/app/modules/location/controller.dart';
import 'package:feather/app/modules/location/widgets/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationPage extends GetView<LocationController> {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.refreshData();

    return Scaffold(
      appBar: const TitleBar(),
      body: Obx(
        () => controller.cityList.isEmpty
            ? Obx(() => ListView.builder(
                  itemCount: controller.provinceList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          '${controller.provinceList[index].name} - ${controller.provinceList[index].code}'),
                      onTap: () {
                        controller.selectProvince(
                            controller.provinceList[index].code);
                      },
                    );
                  },
                ))
            : Obx(() => ListView.builder(
                  itemCount: controller.cityList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          '${controller.cityList[index].name} - ${controller.cityList[index].code}'),
                      onTap: () {
                        controller.back(controller.cityList[index].code);
                      },
                    );
                  },
                )),
      ),
    );
  }
}
