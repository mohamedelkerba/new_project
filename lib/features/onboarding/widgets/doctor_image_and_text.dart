// The DoctorImageAndText widget displays an image with overlaying text and background.
// It uses a gradient overlay on the doctor image to create a fade effect.

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
      SvgPicture.asset('assets/images/background_doc_icon.svg'),
      Container(
        foregroundDecoration:BoxDecoration(
          gradient:LinearGradient(colors: [
            Colors.white,
            Colors.white.withOpacity(0.0),
          ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops:  const [0.14 , 0.4]

          )
        ) ,
        child: Image.asset('assets/images/on_boarding_doctor_image.png'),
      ),
      Positioned(
        bottom: 30,
        right: 0,
        left: 0,
        child: Text('Best Doctor \n Appointment App',
          style: TextStyles.font32PrimaryBold.copyWith(height: 1.4),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
