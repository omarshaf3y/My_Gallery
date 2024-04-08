import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer(
      {super.key, required this.textTitle, required this.imageShape});
  final String textTitle;
  final String imageShape;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39.85,
      width: 145,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.003, 1.0),
          colors: [Colors.white, Color(0x6effffff)],
          stops: [0.216, 1.0],
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.3),
            child: Stack(
              children: [
                SvgPicture.string(
                  imageShape,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  left: 8,
                  top: 8,
                  child: SvgPicture.string(
                    '<svg viewBox="68.7 177.6 14.3 9.8" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 68.71, 187.4)" d="M 0.3421300053596497 8.33411979675293 C 0.2801100015640259 8.334099769592285 0.2192500084638596 8.315249443054199 0.1660799980163574 8.279580116271973 C 0.1128999963402748 8.24390983581543 0.06939999759197235 8.192780494689941 0.04022999107837677 8.131629943847656 C 0.01105999015271664 8.070480346679688 -0.002690009772777557 8.001629829406738 0.0004499927163124084 7.932429790496826 C 0.003589992644265294 7.863229751586914 0.02350999228656292 7.796289920806885 0.05806999281048775 7.738749980926514 L 4.610040187835693 0.1690797805786133 C 4.641350269317627 0.1170297861099243 4.683629989624023 0.07438977807760239 4.733170032501221 0.04489978402853012 C 4.782710075378418 0.01540978439152241 4.837980270385742 -1.021474599838257e-05 4.894110202789307 -1.021474599838257e-05 C 4.950240135192871 -1.021474599838257e-05 5.005510330200195 0.01540978532284498 5.055050373077393 0.04489978402853012 C 5.10459041595459 0.07438978552818298 5.146870613098145 0.1170297861099243 5.17818021774292 0.1690797805786133 L 9.730850219726562 7.738749980926514 C 9.765410423278809 7.796279907226562 9.785329818725586 7.863229751586914 9.788470268249512 7.932429790496826 C 9.791610717773438 8.001629829406738 9.777860641479492 8.070479393005371 9.748690605163574 8.131629943847656 C 9.719520568847656 8.192779541015625 9.676020622253418 8.24390983581543 9.622840881347656 8.279580116271973 C 9.569661140441895 8.315250396728516 9.508810997009277 8.334099769592285 9.44679069519043 8.33411979675293 L 7.043310642242432 8.33411979675293 L 7.043310642242432 13.87390995025635 C 7.04326057434082 13.97523975372314 7.007210731506348 14.07240962982178 6.943070411682129 14.1440601348877 C 6.878930568695068 14.2157096862793 6.791950225830078 14.25599002838135 6.701250553131104 14.25604057312012 L 3.086980581283569 14.25604057312012 C 2.996260643005371 14.25604057312012 2.909260511398315 14.21578025817871 2.845110654830933 14.14412021636963 C 2.780960559844971 14.07246017456055 2.74492073059082 13.97525978088379 2.74492073059082 13.87392044067383 L 2.74492073059082 8.33413028717041 L 0.3421300053596497 8.33411979675293 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13.2),
            child: Text(
              textTitle,
              style: const TextStyle(
                fontFamily: 'Baloo Thambi 2',
                fontSize: 20,
                color: Color(0xff4a4a4a),
                fontWeight: FontWeight.w600,
                height: 1.25,
              ),
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
