import 'package:flutter/material.dart';
import 'package:goodtechminds/core/constants/constants.dart';
import 'package:goodtechminds/view/home/firstpage.dart';

import '../../core/colors/colors.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext ctx) {
    _ScreenTwoSheet(ctx);
    return Column(
      children: const <Widget>[
        Expanded(child: FirstPage()),
      ],
    );
  }

  _ScreenTwoSheet(BuildContext ctx) async {
    await Future<dynamic>.delayed(
      const Duration(seconds: 2),
    );

    showModalBottomSheet(
        backgroundColor: rrblack.withOpacity(0),
        context: ctx,
        builder: (BuildContext ctx1) {
          return Container(
              height: 280,
              width: double.infinity,
              // color: Colors.black,
              child: Column(children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                        backgroundColor: rrblack.withOpacity(0.3),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            icon: Icon(
                              Icons.close,
                              color: rrwhite,
                            )))),
                rrHeight12,
                Expanded(
                    child: Container(
                        child: Column(children: [
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: rrwhite,
                          ),
                          height: 200,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Repeat with same Combinations ?',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 140,
                                      height: 20,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'asset/img/nonvegred.png'),
                                          rrwidth5,
                                          Text(
                                            'Chicken Biriyani',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text('\$190')
                                  ],
                                ),
                                Text('       \$190'),
                                rrHeight12,
                                Text(
                                  '           Half[2 pieces]',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    borderContainer(
                                      color: Colors.blue,
                                      text: 'Add New',
                                    ),
                                    borderContainer(
                                      color: Colors.red,
                                      text: 'Repeat Last',
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )))
                ])))
              ]));
        });
  }
}

class borderContainer extends StatelessWidget {
  const borderContainer({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 160,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: color)),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
