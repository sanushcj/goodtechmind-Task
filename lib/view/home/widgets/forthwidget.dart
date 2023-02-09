import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'vegbutton.dart';

class ForthWidget extends StatelessWidget {
  const ForthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 15),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            child: Row(
              children: const <Widget> [
                VegButton(img: 'asset/img/veg.png', text: 'Veg'),
                rrwidth12,
                VegButton(
                    img: 'asset/img/Non_veg_symbol.svg.png', text: 'Non Veg'),
              ],
            ),
          ),
          Container(
              width: 90,
              height: 24,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.grey.withOpacity(0.4)),
              child: Padding(
                padding: const EdgeInsets.only(left: 2.0,right: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget> [
                    Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 15,
                    ),Text('Search Menu', style: TextStyle(color: Color.fromARGB(255, 108, 108, 108),fontSize: 10),)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
