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
        children: [
          const Positioned(
            child: Hero(
              tag: "shoes",
              child: Image(
                image: AssetImage("assets/images/user1.png"),
              ),
            ),
          ),
          const Positioned(
            top: 50.0,
            left: 130.0,
            child: Text(
              "What is internet?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                fontFamily: 'Cabin',
              ),
            ),
          ),
          Positioned(
            top: 130.0,
            left: 240.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: 60.0,
                height: 30.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text("Buy"),
              ),
            ),
          ),
          const Positioned(
            top: 110.0,
            left: 190.0,
            child: Text(
              "200\$",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
