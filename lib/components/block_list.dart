import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/components/tutorial_block.dart';

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
          children: const [
            TutorialBlock(),
            SizedBox(
              height: 10.0,
            ),
            TutorialBlock(),
            SizedBox(
              height: 10.0,
            ),
            TutorialBlock(),
            SizedBox(
              height: 10.0,
            ),
            TutorialBlock(),
            SizedBox(
              height: 10.0,
            ),
            TutorialBlock(),
          ],
        ),
      ),
    );
  }
}
