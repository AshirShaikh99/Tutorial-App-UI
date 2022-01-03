import 'package:flutter/material.dart';

class ContentBlock extends StatelessWidget {
  const ContentBlock({Key? key}) : super(key: key);

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
        children: const [
          Positioned(
            top: 30.0,
            left: 20.0,
            child: Text(
              "What is HTML",
              style: TextStyle(
                color: Color(0xffC9A85E),
                fontWeight: FontWeight.bold,
                fontSize: 34.0,
                fontFamily: 'Cabin',
              ),
            ),
          ),
          Positioned(
            top: 80.0,
            left: 20.0,
            child: Text(
              "html is used to make web pages and\nit discribes the layout of a web page.",
              style: TextStyle(
                color: Color(0xff735A24),
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                fontFamily: 'Cabin',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
