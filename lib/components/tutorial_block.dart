import 'package:flutter/material.dart';

class TutorialBlock extends StatelessWidget {
  const TutorialBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 370.0,
      decoration: BoxDecoration(
        color: const Color(0xffFFE3A8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: const [
          Positioned(
            child: Hero(
              tag: "shoes",
              child: Image(
                image: AssetImage("assets/images/user1.png"),
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            left: 140.0,
            child: Text(
              "Networking",
              style: TextStyle(
                color: Color(0xffC9A85E),
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
              "Basics of Internet\nand WEB",
              style: TextStyle(
                color: Color(0xff735A24),
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
