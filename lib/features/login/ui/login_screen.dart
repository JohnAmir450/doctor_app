import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/custom_text_button.dart';
import 'package:doctor_app/core/widgets/custom_text_filed.dart';
import 'package:doctor_app/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
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
              const Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              const Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GreyRegular,
              ),
              verticalSpace(36),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      // ignore: prefer_const_constructors
                      CustomTextField(
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      verticalSpace(18),
                      CustomTextField(
                          keyboardType: TextInputType.visiblePassword,
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined),
                          )),
                      verticalSpace(24),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'Forgot Password',
                            style: TextStyles.font13BlueRegular,
                          )),
                      verticalSpace(40),
                      CustomTextButton(
                        onPressed: () {},
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                      ),
                      verticalSpace(16),
                      const TermsAndConditions(),
                      verticalSpace(90),
                      // ignore: prefer_const_constructors
                      DontHaveAnAccount()
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
