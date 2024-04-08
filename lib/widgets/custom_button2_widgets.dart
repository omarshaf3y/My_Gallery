import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/signup");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
          ),
        ),
        child: Text(
          "SIGNUP",
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey[850],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
