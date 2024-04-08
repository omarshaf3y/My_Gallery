import 'package:flutter/material.dart';
import 'package:login_project/views/login.dart';
import 'package:login_project/views/gallery.dart';

void main() {
  runApp(const LoginPageMain());
}

class LoginPageMain extends StatelessWidget {
  const LoginPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        // "/login": (context) => const LoginPage(),
        "/gallerypage": (context) => const GalleryPage(),
      },
    );
  }
}
