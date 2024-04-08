import 'package:flutter/material.dart';
import 'package:login_project/widgets/custom_button1_widget.dart';

import 'package:login_project/widgets/custom_position_widget.dart';
import 'package:login_project/widgets/entry_page_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: EntryPage(
                      title: 'Welcome To My Gallery',
                      image: 'assets/icons/chat.svg',
                    ),
                  ),
                  CustomButton1(
                    textButton: 'Login',
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
            ),
            CustomPosition()
          ],
        ),
      ),
    );
  }
}
