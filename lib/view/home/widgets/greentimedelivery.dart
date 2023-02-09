import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class GreenTimeDelivery extends StatelessWidget {
   const GreenTimeDelivery({
    super.key, required this.icon, required this.text,
  });
final IconData icon;
final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
         Icon(
          icon ,
          color: rrgreen,size: 20,
        ),
        rrwidth5,
         Text(text,style: const TextStyle(fontSize: 12),) ,

        
      ],
    );
  }
}
