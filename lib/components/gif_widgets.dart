import 'package:flutter/material.dart';

class GIFWidget extends StatelessWidget {
  const GIFWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 100.0,
        width: 370.0,
        decoration: BoxDecoration(
          color: const Color(0xffFF9F9F),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Image(
              width: 120.0,
              image: AssetImage("assets/GIF/compass.gif"),
            ),
            Image(
              width: 120.0,
              image: AssetImage("assets/GIF/Trophy.gif"),
            ),
            Image(
              width: 120.0,
              image: AssetImage("assets/GIF/Blackboard-Math.gif"),
            ),
          ],
        ),
      ),
    );
  }
}
