import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key, required this.title, required this.image});
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 50,
            color: Color(0xff4a4a4a),
            fontWeight: FontWeight.w700,
            height: 1.1,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 35,
        ),
        SvgPicture.asset(
          image,
          width: 222,
        ),
        const SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
// Text(
//     'My Gellary ',
//     style: TextStyle(
//       fontFamily: 'Segoe UI',
//       fontSize: 50,
//       color: const Color(0xff4a4a4a),
//       fontWeight: FontWeight.w700,
//       height: 1.1,
//     ),
//     textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
//     textAlign: TextAlign.center,
//   )