import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactIcons extends StatelessWidget {
  const ContactIcons({super.key, required this.imageIcon});
  final String imageIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.purple,
          width: 1,
        ),
      ),
      child: SvgPicture.asset(
        imageIcon,
        // ignore: deprecated_member_use
        color: Colors.purple[400],
        height: 30,
      ),
    );
  }
}
