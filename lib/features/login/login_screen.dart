import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/core/helpers/spacing.dart';
import 'package:new_project/core/theming/font_weight_helper.dart';
import 'package:new_project/core/theming/styles.dart';
import 'package:new_project/features/login/widgets/dont_have_account_text.dart';
import 'package:new_project/features/login/widgets/terms_and_conditions_text.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back ',
            style: TextStyles.font32PrimaryBold
                .copyWith(fontSize: 24, fontWeight: FontWeightHelper.extraBold),
          ),
          verticalSpace(8),
          Text(
            'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
            style: TextStyles.font12GrayReqular.copyWith(fontSize: 14),
          ),
          verticalSpace(36),
          Form(
              key: formKey,
              child: Column(
                children: [
                  const AppTextFormField(
                    hintText: 'Email',
                  ),
                  verticalSpace(18),
                  AppTextFormField(
                    hintText: 'Password',
                    isObsecureText: isObsecureText,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObsecureText = !isObsecureText;
                          });
                        },
                        child: Icon(isObsecureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forget Password?',
                      style: TextStyles.font32PrimaryBold.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeightHelper.normal,
                      ),
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {},
                  ),
                  verticalSpace(30),
                  const TermsAndConditionsText(),
                  verticalSpace(40),
                  const DontHaveAccountText(),
                ],
              ))
        ],
      ),
    ))));
  }
}
