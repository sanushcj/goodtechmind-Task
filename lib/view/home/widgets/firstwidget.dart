import 'package:flutter/material.dart';

class FirstTextWidget extends StatelessWidget {
  const FirstTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Dessert Pizza, Fastfood',
              style: TextStyle(color: Colors.grey, fontSize: 13.5),
            ),
            Text(
              'Kolkata,west Bengal',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
