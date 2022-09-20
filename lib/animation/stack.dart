import "package:flutter/material.dart";

class CustomStack extends StatelessWidget {
  const CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
     // fit: StackFit.loose,
      // clipBehavior: Clip.,
      // clipBehavior:
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.red,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.green,
        ),Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        Positioned(
          top: 95,
          left: 450,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,))
      ],
    );
  }
}
