import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield(
      {super.key,
      this.contrl,
      this.hintText,
      this.labelText,
      this.validator,
      this.onChanged,
      this.textAlign,
      this.focusNode,
      this.textInputAction,
      this.keyboardType,
      this.onTap,
      this.prefix,
      this.enabled,
      this.prefixText,
      this.suffixIcon,
      this.autofocus,
      this.errorText,
      this.onFieldSubmitted,
      this.onEditingComplete,
      this.isDense = false,
      this.readOnly = false,
      this.obscure = false});

  final TextEditingController? contrl;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Function()? onEditingComplete;
  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function()? onTap;
  final Widget? prefix, suffixIcon;
  final bool? enabled;
  final String? prefixText;
  final bool? autofocus;
  final String? errorText;
  final bool isDense;
  final bool readOnly;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    final dark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return TextFormField(
      onTap: onTap,
      autofocus: false ?? autofocus!,
      //  textAlign: textAlign ?? TextAlign.right,
      controller: contrl,
      textInputAction: textInputAction,
      obscureText: obscure,
      focusNode: focusNode,
      onChanged: onChanged,
      onSaved: (value) => contrl?.text = value!.trim(),
      keyboardType: keyboardType,
      validator: validator,
      enabled: enabled,
      readOnly: readOnly,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      style: GoogleFonts.lato(
        fontSize: Sizes.p14.sp,
        fontWeight: FontWeight.w400,
        
        color: AppColors.onBackground,
      ),
      decoration: InputDecoration(
        isDense: isDense,
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p8.r),
            borderSide: BorderSide(
              
                width: 1.0,
                color: AppColors.primary)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p8.r),
            borderSide: BorderSide(
                width: 1.0,
                color: AppColors.grey)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p8.r),
            borderSide: BorderSide(
                width: 1.0,
                
                color: AppColors.grey)),
        filled: false,
        prefix: prefix,
        suffixIcon: suffixIcon,
        // prefixStyle: GoogleFonts.lato(
        //     fontSize: 15.sp,
        //     fontWeight: FontWeight.w400,
        //     height: 9.38.sp / 8.sp,
        //     color: colorPrimary),
        prefixText: prefixText,
        fillColor: AppColors.onBackground,
        labelText: labelText,
        // labelStyle: GoogleFonts.lato(
        //     fontSize: 13.sp,
        //     fontWeight: FontWeight.w400,
        //     height: 9.38.sp / 8.sp,
        //  color: colorPrimary),

        hintText: hintText,
        hintStyle: GoogleFonts.lato(
        fontSize: Sizes.p12.sp,
        fontWeight: FontWeight.w400,
        
        color: AppColors.onBackground.withValues(alpha: 0.4),
      ),
      ),
    );
  }
}
