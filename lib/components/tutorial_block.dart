import 'package:flutter/material.dart';

class TutorialBlock extends StatelessWidget {
  const TutorialBlock(this.heading, this.text, this.img, this.blockColor,
      this.headingColor, this.textColor,
      {Key? key})
      : super(key: key);
  final String heading;
  final String text;
  final Image img;
  final Color blockColor;
  final Color headingColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 370.0,
      decoration: BoxDecoration(
        color: blockColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Hero(
              tag: "2",
              child: img,
            ),
          ),
          Positioned(
            top: 50.0,
            left: 140.0,
            child: Text(
              heading,
              style: TextStyle(
                color: headingColor,
                fontWeight: FontWeight.bold,
                fontSize: 34.0,
                fontFamily: 'Cabin',
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            left: 140.0,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                fontFamily: 'Cabin',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
