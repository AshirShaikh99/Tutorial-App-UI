import 'package:flutter/material.dart';

class CodeBlock extends StatelessWidget {
  const CodeBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: 370.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: const [
          Positioned(
            top: 15.0,
            left: 20.0,
            child: Text(
              "<!DOCTYPE html>\n<html>\n<head>\n<title>Page Title</title>\n</head>\n<body>\n<h1>My First Heading</h1>\n</body>\n</html>",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                fontFamily: 'Cabin',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
