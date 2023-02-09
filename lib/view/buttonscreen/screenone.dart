import 'package:flutter/material.dart';
import 'package:goodtechminds/core/colors/colors.dart';
import 'package:goodtechminds/core/constants/constants.dart';
import '../home/firstpage.dart';
import 'package:dotted_border/dotted_border.dart';

// ignore: must_be_immutable
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  // ScreenOneControlller controller = Get.put(ScreenOneControlller());
  @override
  Widget build(BuildContext context) {
    _ScreenOneSheet(context);
    return Column(
      children: const <Widget>[
        Expanded(child: FirstPage()),
      ],
    );
  }

  _ScreenOneSheet(BuildContext ctx) async {
    await Future<dynamic>.delayed(
      const Duration(seconds: 2),
    );

    showModalBottomSheet(
        backgroundColor: rrblack.withOpacity(0),
        context: ctx,
        builder: (BuildContext ctx1) {
          return Container(
            height: 350,
            width: double.infinity,
            // color: Colors.black,
            child: Column(
              children: [
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
                            child: Center(
                              child: Text(
                                'AVAILABLE COUPONS',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          SoneBSone(color: Colors.red,),
                          Divider(thickness: 2,),
                           SoneBSone(color: Colors.grey,),
                           Divider()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

class SoneBSone extends StatelessWidget {
  const SoneBSone({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Get 50% OFF up to \$100',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Valid on only this order',
              style:
                  TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: DottedBorder(
                  color: Color.fromARGB(255, 0, 47, 255),
                  radius: Radius.circular(10),
                  dashPattern: [4, 2],
                  padding: EdgeInsets.all(0),
                  strokeWidth: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 10,
                    width: 55,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent.withOpacity(0.5),
                    ),
                    child: Text(
                      'WELCOME03',
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color:
                              Color.fromARGB(255, 0, 89, 255)),
                    ),
                  ),
                ),
              ),
              Text(
                'APPLY THIS COUPON',
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color:color),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
