import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import 'widgets/blueborderbox.dart';
import 'widgets/firstwidget.dart';
import 'widgets/forthwidget.dart';
import 'widgets/ratingreview.dart';
import 'widgets/sandwichtile.dart';
import 'widgets/secondRow.dart';

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
        actions: const <Widget> [
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget> [
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
                    itemBuilder: (BuildContext context, int index) => const BlueborderBox(),
                    separatorBuilder: (BuildContext context, int index) => rrwidth12,
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
                  itemBuilder: (BuildContext context, int index) =>  const SandwichTile(),
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemCount: 10),
            ),
           
          ]),
    );
  }
}
