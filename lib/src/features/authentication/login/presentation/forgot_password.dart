import 'dart:io';

import 'package:codehallam/src/common_widget/app_textfield.dart';
import 'package:codehallam/src/common_widget/primary_button.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:codehallam/src/utils/validators/validator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  
  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context, ) {
    return GestureDetector(
       onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }},
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot Password',
            style: GoogleFonts.fjallaOne(
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                color: AppColors.onBackground),
          ),
          centerTitle: true,
          leading: Platform.isAndroid
              ? IconButton(
                  icon:
                      const Icon(Icons.arrow_back, color: AppColors.onBackground),
                  onPressed: () => Navigator.of(context).pop(),
                )
              : IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                      color: AppColors.onBackground),
                  onPressed: () => Navigator.of(context).pop(),
                ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:Sizes.p16.w, vertical: 40.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                
                  children: [
                    Text(
                      'Please enter your email address to receive a password reset OTP',
                      style: GoogleFonts.lato(
                          fontSize: Sizes.p14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.onBackground),
                    ),
                    gapH16,
                    Form(
                      key: _formkey,
                      child: AppTextfield (
                        labelText: 'Email',
                        validator: context.validateEmailAddress,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        contrl: emailController,
                       
                      ),
                    ),
                  ],
                ),
                PrimaryButton(
                  text: 'Send OTP',
                  backGroundColor: AppColors.primary,
                  onPressed:   () {
                    if (_formkey.currentState!.validate()) {
                      //Todo: Implement send OTP functionality
                  }},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
