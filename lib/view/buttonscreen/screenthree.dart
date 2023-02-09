import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core/colors/colors.dart';
import '../../core/constants/constants.dart';
import '../home/firstpage.dart';

class ScreenThree extends StatelessWidget {
  ScreenThree({super.key});
  List<String> food = <String>[
    'pups',
    'Samoosa',
    'pinapple juice',
    'banana fry',
    'parippuvada',
    'panipuri',
    'masaladosa',
    'cutlet',
    'burger',
    'sandwich',
    'ChickenFry'
  ];
  @override
  Widget build(BuildContext context) {
    _ScreenThreeSheet(context);
    return Column(
      children: const <Widget>[
        Expanded(child: FirstPage()),
      ],
    );
  }

  _ScreenThreeSheet(BuildContext ctx) async {
    await Future<dynamic>.delayed(
      const Duration(seconds: 3),
    );

    showModalBottomSheet(
        backgroundColor: Colors.amber.withOpacity(0),
        context: ctx,
        builder: (BuildContext ctx1) {
          return Container(
              height: 500,
              width: double.infinity,              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: rrwhite,
                    ),
                    height: 400,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [rrHeight12,
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Menu',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ),
                          rrHeight12,
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Recommended',
                                    style: TextStyle(color: Colors.red)), Text('30',style: TextStyle(color: Colors.red))
                              ],
                            ),
                          ),
                          Expanded(
                            child: RawScrollbar(
                                thumbVisibility: true,
                                trackVisibility: true,
                                thumbColor: Colors.red,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      ListTile(leading: Text(food[index]),trailing: Text('$index'),),
                                  separatorBuilder: (context, index) => SizedBox(),
                                  itemCount: food.length,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                rrHeight12,
                InkWell(
                  onTap: () => Navigator.of(ctx).pop(),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4),color: rrwhite),
                               child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Close'),Icon(Icons.close)
                     ],
                   ),
                               ), ),
                )
              ]));
        });
  }
}
