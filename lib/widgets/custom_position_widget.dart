import 'package:flutter/material.dart';

class CustomPosition extends StatelessWidget {
  const CustomPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: Image.asset(
            'assets/images/main_top.png',
            width: 111,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            'assets/images/login_bottom.png',
            width: 111,
          ),
        )
      ],
    );
  }
}
