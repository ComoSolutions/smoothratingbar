import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rating bar demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SmoothStarRating(
          rating: rating,
          size: 65,
          filledWidget: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
          ),
          halfFilledWidget: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
            ),
          ),
          defaultWidget: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          starCount: 5,
          allowHalfRating: true,
          spacing: 2.0,
          onRatingChanged: (value) {
            setState(() {
              rating = value;
            });
          },
        )),
      ),
    );
  }
}
