import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/components//gif_widgets.dart';
import 'package:tutorial_app_ui/components/block_list.dart';
import 'package:tutorial_app_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: kAppBarStyle,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Hey Ashir,",
                      style: kTextStyleHeading,
                    ),
                    Hero(
                      tag: '1',
                      child: Image(
                        width: 50.0,
                        image: AssetImage("assets/images/user.png"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const GIFWidget(),
              const Text(
                "Best Tutorials!",
                style: kTextStyleHeading2,
              ),
              const BlockList(),
            ],
          ),
        ),
      ),
    );
  }
}
