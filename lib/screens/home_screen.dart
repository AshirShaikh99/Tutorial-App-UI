import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/widgets/gif_widgets.dart';

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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          elevation: 10.0,
          title: const Text(
            "Tutorials!",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
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
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 30.0),
                child: Text(
                  "Hello!",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GIFWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
