import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:goodtechminds/view/buttonscreen/Screen2.dart';
import 'package:goodtechminds/view/buttonscreen/screenone.dart';
import 'package:goodtechminds/view/buttonscreen/screenthree.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoodTechMinds'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(ScreenOne());
              },
              child: Text('ScreenOne')),
          ElevatedButton(
              onPressed: () {
                Get.to(ScreenTwo());
              },
              child: Text('Screen2')),
                 ElevatedButton(
              onPressed: () {
                Get.to(ScreenThree());
              },
              child: Text('Screen3'))
        ],
      ),
    );
  }
}
