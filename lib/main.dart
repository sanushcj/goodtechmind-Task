import 'package:flutter/material.dart';
import 'package:goodtechminds/view/home/firstpage.dart';

void main() {
  runApp(const GoodTechMinds());
}

class GoodTechMinds extends StatelessWidget {
  const GoodTechMinds({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}