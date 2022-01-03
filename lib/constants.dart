import 'package:flutter/material.dart';

const kTextStyleHeading = TextStyle(
  fontSize: 40.0,
  fontFamily: 'Regular',
  fontWeight: FontWeight.w200,
);

const kTextStyleHeading2 = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Regular',
  fontWeight: FontWeight.w200,
  letterSpacing: 3.0,
);

final kAppBarStyle = AppBar(
  centerTitle: true,
  backgroundColor: Colors.orange,
  elevation: 10.0,
  title: const Text(
    "Tutorials!",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: 'Regular',
    ),
  ),
  actions: const [
    Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Icon(
        Icons.search,
        color: Colors.black,
        size: 30.0,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.notifications_none,
        color: Colors.black,
        size: 30.0,
      ),
    )
  ],
);

final kAppBarStyle2 = AppBar(
  centerTitle: true,
  backgroundColor: Colors.orange,
  elevation: 10.0,
  title: const Text(
    "Tutorials!",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: 'Regular',
    ),
  ),
  leading: const Icon(
    Icons.arrow_back_ios_rounded,
    color: Colors.black,
  ),
  actions: const [
    Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Icon(
        Icons.search,
        color: Colors.black,
        size: 30.0,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.notifications_none,
        color: Colors.black,
        size: 30.0,
      ),
    )
  ],
);
