import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controllers/HomePageController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // color: Colors.black,
      // darkTheme:
      theme: ThemeData(
        brightness: Brightness.dark
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // home: title: 'Flutter Demo Home Page',
      // home: HomePageController(),
      home: HomePageController()
    );
  }
}


