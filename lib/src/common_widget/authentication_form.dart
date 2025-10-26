import 'package:codehallam/src/common_widget/app_textfield.dart';
import 'package:codehallam/src/common_widget/primary_button.dart';
import 'package:codehallam/src/common_widget/separate_text.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:codehallam/src/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationForm extends StatelessWidget {
  const AuthenticationForm(
      {super.key,
      required GlobalKey<FormState> formkey,
      required this.onTap,
      required this.headline,
    
      required this.child,
      required this.obscure,
      required this.suffixIcon,
      required this.acc1,
      required this.acc2,
      required this.btnText,
      required this.btnOnTap})
      : _formkey = formkey;

  final GlobalKey<FormState> _formkey;

  final VoidCallback onTap, btnOnTap;
  final String headline, acc1, acc2, btnText;

  final Widget child;
  final bool obscure;
  final Widget suffixIcon;
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          Text(
            '$headline ',
            style: GoogleFonts.fjallaOne(
                fontSize: Sizes.p16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onBackground),
          ),
          gapH16,
          AppTextfield(
            labelText: 'Email',
            validator: context.validateEmailAddress,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          gapH20,
          AppTextfield(
            labelText: 'Password',
            validator: context.validatePassword,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscure: obscure,
            suffixIcon: suffixIcon,
          ),
          gapH16  ,
          child,
          gapH24,
          PrimaryButton(
            backGroundColor: AppColors.primary,
            onPressed: onTap,
            text: 'Login',
          ),
          gapH24,
          SeparateText(
              onTap: btnOnTap,
              textA: acc1,
              textB: acc2,
              styleA: GoogleFonts.fjallaOne(
                  fontSize: Sizes.p14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey),
              styleB: GoogleFonts.lato(
                  fontSize: Sizes.p14.sp, color: AppColors.blueColor)),
          gapH16,
          /*  Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
              Expanded(
                child: Divider(
                  color: AppColors.grey,
                  thickness: 1,
                  endIndent: 10,
                ),
              ),
              Text(
                'or login with',
                style: GoogleFonts.lato(
                    fontSize: Sizes.p14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
              ),
              Expanded(
                child: Divider(
                  color: AppColors.grey,
                  thickness: 1,
                  indent: 10,
                ),
              ),
            ],),
          ) */
        ],
      ),
    );
  }
}
