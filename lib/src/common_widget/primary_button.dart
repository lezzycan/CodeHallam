import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// Primary button based on [ElevatedButton].
/// Useful for CTAs in the app.
/// @param text - text to display on the button.
/// @param isLoading - if true, a loading indicator will be displayed instead of
/// the text.
/// @param onPressed - callback to be called when the button is pressed.
class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {required this.text,
      super.key,
      this.isLoading = false,
      this.onPressed,
      this.backGroundColor});
  final String text;
  final bool isLoading;
  final Color? backGroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p48,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p8.r),
          ),
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(text,
                textAlign: TextAlign.center,
                style: GoogleFonts.fjallaOne(
                  color: AppColors.onPrimary,
                  fontWeight: FontWeight.w500,
                  fontSize: Sizes.p16.sp,
                ),),
      ),
    );
  }
}
