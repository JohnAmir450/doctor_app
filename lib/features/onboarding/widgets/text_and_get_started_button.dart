import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndGetStartedButton extends StatelessWidget {
  const TextAndGetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child:  Column(
        children: [
          const Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
          style: TextStyles.font13GreyRegular,textAlign: TextAlign.center,
          ),
          verticalSpace(30.h),
          const GetStartedButton()
        ],
      ),
    );
  }
}
