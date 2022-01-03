import 'package:flutter/material.dart';
import 'package:tutorial_app_ui/screens/home_screen.dart';

class GettingStartedButton extends StatelessWidget {
  const GettingStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 300, height: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        child: const Text(
          "Getting Started",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
