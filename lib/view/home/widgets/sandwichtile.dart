import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class SandwichTile extends StatelessWidget {
  const SandwichTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 15),
      child: Container(
        height: 140,
        width: double.infinity,
        color: rrwhite,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset('asset/img/veg.png'),
                    ),
                    const Text('Regular Sandwich',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    rrHeight12,
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(.5),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                        rrwidth5,
                        const Text('12 Reviews',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10))
                      ],
                    ),
                    const Text('\$180',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10)),
                    const Text('Veg | Super Sandwich of India',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 5))
                  ],
                ),
              ),
              Container(
                  height: 95,
                  width: 90,
                  child: Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: ExactAssetImage(
                                  'asset/img/Sandwich.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                            color: Colors.amber.withOpacity(.5),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Positioned(
                        top: 75,
                        left: 10,
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              color: Color.fromARGB(255, 255, 175, 170)),
                          child: const Text('ADD',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.red)),
                        ),
                      )
                    ],
                  ))
            ]),
      ),
    );
  }
}
