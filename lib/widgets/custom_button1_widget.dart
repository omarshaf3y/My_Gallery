import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({super.key, required this.textButton});
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/gallerypage");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.purple[800],
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 79, vertical: 10),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
