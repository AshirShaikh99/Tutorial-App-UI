import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/components/tutorial_block.dart';
import 'package:tutorial_app_ui/screens/tutorial_screen.dart';

class BlockList extends StatelessWidget {
  const BlockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 360.0,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TutorialScreen(),
                  ),
                );
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TutorialScreen(),
                    ),
                  );
                },
                child: const TutorialBlock(
                  "Networking",
                  "Basics of Internet\nand WEB",
                  Image(
                    image: AssetImage(
                      "assets/images/user1.png",
                    ),
                  ),
                  Color(0xffFFE3A8), // Block Color
                  Color(0xffC9A85E), // Heading Color
                  Color(0xff735A24), // Text Color
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TutorialScreen(),
                  ),
                );
              },
              child: const TutorialBlock(
                "Programming",
                "Basics of HTML\nand CSS",
                Image(
                  image: AssetImage("assets/images/user2.png"),
                ),
                Color(0xffFFC9E3), // Block Color
                Color(0xffD364BE), // Heading Color
                Color(0xff78356E), // Text Color
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TutorialBlock(
              "Marketing",
              "Basics of Marketing\nand Ecommerce",
              Image(
                image: AssetImage("assets/images/user3.png"),
              ),
              Color(0xffB4F9BB), // Block Color
              Color(0xff60CA6B), // Heading Color
              Color(0xff3E7945), // Text Color
            ),
          ],
        ),
      ),
    );
  }
}
