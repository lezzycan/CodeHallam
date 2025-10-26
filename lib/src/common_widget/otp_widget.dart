import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OTPWidget extends StatelessWidget {
  const OTPWidget({super.key, required this.pinController, this.onCompleted});
  final TextEditingController pinController;
  final Function(String)? onCompleted;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
     // widthFactor: 1.0,
      child: Pinput(
        controller: pinController,
        onCompleted: onCompleted,
        length: 4,
        defaultPinTheme: PinTheme(
          width: 50.h,
          height: 60.h,
          textStyle:  TextStyle(
              fontSize: 20.sp, color: AppColors.onBackground.withAlpha(3), fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 50.h,
          height: 60.h,
          textStyle:  TextStyle(
              fontSize: 20.sp, color: AppColors.onBackground.withAlpha(3), fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primary),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        submittedPinTheme: PinTheme(
           width: 50.h,
          height: 60.h,
          textStyle:  TextStyle(
              fontSize: 20.sp, color: AppColors.onBackground.withAlpha(3), fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),);
  }
}