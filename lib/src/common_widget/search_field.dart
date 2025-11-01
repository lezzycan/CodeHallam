import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchField extends StatelessWidget {
  const SearchField(
      {super.key,
     
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.fillColor,
      this.borderSide,
      this.borderRadius,
      this.filled = true,
      this.maxLines,
      this.enabled = true,
      this.readOnly = false,
      this.controller,
      this.hint,
      this.minLines});

 
  final String? hintText;
  final Widget? prefixIcon, suffixIcon, hint;
  final Color? fillColor;
  final bool filled;
  final BorderSide? borderSide;
  final double? borderRadius;
  final int? maxLines, minLines;
  final bool? enabled, readOnly;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
   
    return Container(
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular( 10.r),
          color: AppColors.onPrimary,
      ),
     
      height: 40.h,
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        minLines: minLines,
        readOnly: readOnly ?? false,
        style:GoogleFonts.lato(
          fontSize: 12.sp, color: AppColors.onBackground
        ),
        enabled: enabled,
        decoration: InputDecoration(
          isDense: true,
          hint: hint,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          fillColor: fillColor,
          filled: filled,
         
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
            borderSide: borderSide ??
                BorderSide(
                  width: 1.0,
                  color: AppColors.onPrimary,
                ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
            borderSide: borderSide ??
                BorderSide(
                  width: 1.0,
                  color: AppColors.onPrimary,
                ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
            borderSide: borderSide ??
                BorderSide(
                  width: 1.0,
                  color: AppColors.onPrimary,
                ),
          ),
        ),
      ),
    );
  }
}
