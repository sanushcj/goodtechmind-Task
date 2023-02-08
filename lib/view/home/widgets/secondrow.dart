import 'package:flutter/material.dart';
import 'package:goodtechminds/core/constants/constants.dart';

import 'greentimedelivery.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Row(
        children: const [
          GreenTimeDelivery(
            icon: Icons.alarm,
            text: '35 mins',
            
          ),
          rrwidth20,
          GreenTimeDelivery(
            icon: Icons.fire_truck,
            text: 'Free Delivery',
          ),
        ],
      ),
    );
  }
}
