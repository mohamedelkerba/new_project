// The DocLogoAndName widget displays the app logo and name side by side.
// It centers the logo and name horizontally and applies a custom text style.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/doc_icon.svg'),
        SizedBox(width: 10.w,),
        Text('Docdog',
         style: TextStyles.font24Black700Weight,
        ),
      ],
    );
  }
}
