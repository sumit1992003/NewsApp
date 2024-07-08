
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/NavigationBar-FloatingAction.dart';
import 'BottomNavController.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController Controller = Get.put(BottomNavController());
    return Scaffold(
      floatingActionButton: MyBottomNav(),
      body: Obx(() => Controller.pages[Controller.index.value]),
    );
  }
}
