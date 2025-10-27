import 'package:codehallam/src/common_widget/otp_widget.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, this.email, this.pinController, required this.timer, required this.onResend, required this.resendText});
   final String? email;
   final TextEditingController? pinController;
   final String timer; final Color resendText; final VoidCallback onResend;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Sizes.p16.w, vertical: Sizes.p24.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter OTP Code',
                style: GoogleFonts.fjallaOne(
                    fontSize: Sizes.p16.h, fontWeight: FontWeight.w500, color: AppColors.onBackground),
              ),
              gapH4,
              Text(
                
                'We have sent the code verification to your email \n $email',
                textAlign: TextAlign.center,
                style: GoogleFonts.fjallaOne(
                    fontSize: Sizes.p12.h, fontWeight: FontWeight.w400, color: AppColors.grey),
              ),
            ],
          ),
          gapH16,
          OTPWidget(
            pinController: pinController ?? TextEditingController(),
           
          ),
          gapH12,
          
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: onResend,
                     child: Text(' $timer',  style: GoogleFonts.fjallaOne(
                          fontSize: Sizes.p14.h, fontWeight: FontWeight.w500, color: AppColors.grey),),
                     
                    ),
                    Text(
                      'Resend',
                      style: GoogleFonts.fjallaOne(
                          fontSize: Sizes.p12.h, fontWeight: FontWeight.w300, color: resendText),
                    ),
                  ],
                ),
    
            
        ],
      ),
    );
  }
}