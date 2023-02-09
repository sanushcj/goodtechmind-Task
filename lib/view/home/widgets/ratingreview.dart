import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

import '../../../core/constants/constants.dart';

class RatingReviewContainer extends StatelessWidget {
  const RatingReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          boxShadow: const <BoxShadow> [
            BoxShadow(
              blurRadius: 02.0,
              offset: Offset(0.0, 0.1),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: rrwhite,
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget> [
                          Text(
                            '4.2',
                            style: TextStyle(color: rrwhite),
                          ),
                          rrwidth5,
                          Icon(
                            Icons.star,
                            color: rrwhite,
                            size: 14,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const <Widget>[
                        Text(
                          '200',
                          style: TextStyle(color: rrblack, fontSize: 12),
                        ),
                        Text(
                          'Reviews',
                          style: TextStyle(color: rrblack, fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
