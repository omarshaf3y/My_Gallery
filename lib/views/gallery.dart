import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:login_project/widgets/log_out_and_upload_container.dart';
import 'package:login_project/widgets/grid_view_widget.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1E6FF),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Welcome \nOmar',
                    style: TextStyle(
                      fontFamily: 'Baloo Thambi 2',
                      fontSize: 32,
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w600,
                      height: 1.28125,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 66,
                      height: 66,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: ChoiceContainer(
                    textTitle: 'log out',
                    imageShape:
                        '<svg viewBox="60.3 168.1 32.2 28.8" ><defs><radialGradient id="gradient" gradientTransform="matrix(-0.395941 0.197222 -0.197308 -0.396104 0.741954 0.831417)" fx="-0.57322" fy="0.736892" fr="0.0" cx="-0.57322" cy="0.736892" r="1.129878"><stop offset="0.0" stop-color="#c83b3b" /><stop offset="1.0" stop-color="#fb4949" /></radialGradient></defs><path transform="matrix(0.0, -1.0, 1.0, 0.0, 60.27, 196.92)" d="M 8.413729667663574 0.7047100067138672 C 12.36661911010742 -0.2348999977111816 16.4522590637207 -0.2348999977111816 20.40514945983887 0.7047100067138672 C 24.40013885498047 1.467200040817261 27.54817008972168 5.000470161437988 28.20999908447266 9.471340179443359 C 29.0363597869873 13.84998035430908 29.0363597869873 18.37300109863281 28.20999908447266 22.75162887573242 C 27.54485893249512 27.24758911132812 24.36443901062012 30.79544830322266 20.33774948120117 31.53108978271484 C 16.42820930480957 32.44916915893555 12.39049911499023 32.44916915893555 8.480959892272949 31.53108978271484 C 4.387389659881592 30.78338050842285 1.168649673461914 27.1292896270752 0.5780596733093262 22.52729034423828 C -0.192680299282074 18.29341125488281 -0.192680299282074 13.92954063415527 0.5780596733093262 9.695660591125488 C 1.165339708328247 5.118950366973877 4.352039337158203 1.479840278625488 8.413729667663574 0.7047004699707031 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: AlertDialog(
                          backgroundColor: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          content: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  height: 65,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Transform.rotate(
                                        angle: -13,
                                        child: Image.asset(
                                          'assets/icons/gallery_icon.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const Positioned(
                                        top: 18,
                                        left: 120,
                                        child: Text(
                                          'Gellary',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 27,
                                            color: Color(0xff4a4a4a),
                                            fontWeight: FontWeight.w700,
                                            height: 2.185185185185185,
                                          ),
                                          textHeightBehavior:
                                              TextHeightBehavior(
                                                  applyHeightToFirstAscent:
                                                      false),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 65,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEBF6FF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Transform.rotate(
                                        angle: -13,
                                        child: Image.asset(
                                          'assets/icons/camera_icon.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const Positioned(
                                        top: 18,
                                        left: 120,
                                        child: Text(
                                          'Camera',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 27,
                                            color: Color(0xff4a4a4a),
                                            fontWeight: FontWeight.w700,
                                            height: 2.185185185185185,
                                          ),
                                          textHeightBehavior:
                                              TextHeightBehavior(
                                                  applyHeightToFirstAscent:
                                                      false),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        16), // Adjust as per your requirement
                              ],
                            ),
                          ),
                          actions: const <Widget>[],
                        ),
                      );
                    },
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 46),
                  child: ChoiceContainer(
                    textTitle: 'upload',
                    imageShape:
                        '<svg viewBox="254.5 168.0 31.7 28.4" ><defs><radialGradient id="gradient" gradientTransform="matrix(-0.520117 0.0 0.0 -0.520333 0.902086 0.984151)" fx="0.248056" fy="0.103177" fr="0.0" cx="0.248056" cy="0.103177" r="0.960924"><stop offset="0.0" stop-color="#ffeb38" /><stop offset="1.0" stop-color="#ff9900" /></radialGradient></defs><path transform="translate(254.51, 168.01)" d="M 9.262740135192871 0.6211400032043457 C 13.61450958251953 -0.2070500254631042 18.11241912841797 -0.2070500254631042 22.46419906616211 0.6211400032043457 C 26.86231994628906 1.293220043182373 30.3280086517334 4.407520294189453 31.05661773681641 8.348239898681641 C 31.96635818481445 12.20767021179199 31.96635818481445 16.19435882568359 31.05661773681641 20.05377960205078 C 30.32436752319336 24.01662063598633 26.82300758361816 27.14377975463867 22.38998794555664 27.79219055175781 C 18.0859375 28.60140991210938 13.64078807830811 28.60140991210938 9.336748123168945 27.79219055175781 C 4.830098152160645 27.13315010070801 1.286567687988281 23.91234970092773 0.636378288269043 19.85605049133301 C -0.2121317386627197 16.12421989440918 -0.2121317386627197 12.27780055999756 0.636378288269043 8.545970916748047 C 1.282928228378296 4.511960983276367 4.791178226470947 1.304370880126953 9.262738227844238 0.6211409568786621 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 34.1,
          ),
          const GridViewWidget(),
          const SizedBox(height: 20), // Added to give some space at the bottom
        ],
      ),
    );
  }
}
