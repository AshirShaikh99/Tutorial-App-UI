import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/components//custom_button.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.orangeAccent, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: const [
            // Image Widget //
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Hero(
                  tag: '1',
                  child: Image(
                    image: AssetImage("assets/images/img1.png"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120.0,
            ),
            Text(
              "\b\b\bBe Creative\nWhile Learning",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 3.0),
                    blurRadius: 1.0,
                    color: Colors.black,
                  ),
                  Shadow(
                    offset: Offset(1.0, 3.0),
                    blurRadius: 8.0,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            GettingStartedButton()
          ],
        ),
      ),
    );
  }
}
