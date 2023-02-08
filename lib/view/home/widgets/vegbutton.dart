import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class VegButton extends StatelessWidget {
  const VegButton({
    super.key, required this.img, required this.text,
  });
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 15,
      decoration: BoxDecoration( boxShadow: const [
        BoxShadow(
          color: Colors.black54,
            blurRadius: 1.0,
            offset: Offset(0.0, 0.1)
        )
      ],color: rrwhite,
           borderRadius: BorderRadius.circular(1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          SizedBox(
              width: 10,
              height: 10,
              child: Image.asset(img)),rrwidth5,
           Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 64, 175), fontSize: 7),
          )
        ],
      ),
    );
  }
}
