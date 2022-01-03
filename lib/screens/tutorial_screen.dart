import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/components/code_block.dart';
import 'package:tutorial_app_ui/components/content_block.dart';
import 'package:tutorial_app_ui/constants.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.black,
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
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 28.0),
                    child: Text(
                      "Basics of HTML\nand CSS",
                      style: kTextStyleHeading3,
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage("assets/GIF/art.gif"),
                    ),
                  ),
                ],
              ),
              const ContentBlock(),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                width: 370.0,
                decoration: BoxDecoration(
                  color: const Color(0xffB1C0CB),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text(
                        "Syntax",
                        style: kTextStyleHeading3,
                      ),
                    ),
                    Image(
                      width: 130.0,
                      image: AssetImage("assets/GIF/coding.gif"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const CodeBlock(),
            ],
          ),
        ),
      ),
    );
  }
}
