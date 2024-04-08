import 'package:flutter/material.dart';

import 'package:login_project/widgets/custom_button1_widget.dart';

import 'package:login_project/widgets/custom_position_widget.dart';
import 'package:login_project/widgets/custom_textfield_widget.dart';
import 'package:login_project/widgets/entry_page_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: ListView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const EntryPage(
                      title: 'My \n Gallery',
                      image: 'assets/icons/login.svg',
                    ),
                    Column(
                      children: [
                        const CustomTextField(
                          hintText: 'Your Email',
                          icon: Icons.person,
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          width: 300,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: 'Password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const CustomButton1(
                          textButton: 'Submit',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            const CustomPosition(),
          ],
        ),
      ),
    );
  }
}
