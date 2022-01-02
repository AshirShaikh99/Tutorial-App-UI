import 'package:flutter/material.dart';

class GIFWidget extends StatelessWidget {
  const GIFWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
