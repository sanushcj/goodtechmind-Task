import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodtechminds/core/constants/constants.dart';
import '../../core/colors/colors.dart';
import 'widgets/blueborderbox.dart';
import 'widgets/firstwidget.dart';
import 'widgets/forthwidget.dart';
import 'widgets/ratingreview.dart';
import 'widgets/sandwichtile.dart';
import 'widgets/secondRow.dart';
import 'widgets/vegbutton.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Hoichoi Restaurent',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_horiz, color: Colors.black),
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      FirstTextWidget(),
                      RatingReviewContainer(),
                    ],
                  )
                ],
              ),
            ),
            const SecondRow(),
            rrHeight12,
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: SizedBox(
                height: 25,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const BlueborderBox(),
                    separatorBuilder: (context, index) => rrwidth12,
                    itemCount: 4),
              ),
            ),
            rrHeight12,
            const ForthWidget(),
            rrHeight5,
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Recommended(30)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context, index) =>  const SandwichTile(),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 10),
            ),
           
          ]),
    );
  }
}
