// The GetStartedButton widget is a reusable button for navigation to the login screen.
// It styles the button with primary color and rounded corners, and uses a custom text style.

import 'package:flutter/material.dart';
import 'package:new_project/core/helpers/extensions.dart';
import 'package:new_project/core/theming/colors.dart';
import 'package:new_project/core/theming/styles.dart';
import '../routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor:
                MaterialStateProperty.all(ColorsManager.primaryColor),
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 52)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ))),
        child: Text('Get Started', style: TextStyles.font16WhiteSemiBold));
  }
}
