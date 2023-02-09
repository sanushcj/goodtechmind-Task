import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodtechminds/view/buttonscreen/mainscreen.dart';

void main() {
  runApp(const GoodTechMinds());
}

class GoodTechMinds extends StatelessWidget {
  const GoodTechMinds({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
