
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.asset, required this.onTap});

  final String asset;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.w, width: 40.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey, width: 1.0),
      
          borderRadius: BorderRadius.circular(12.r)
        ),
        child: SvgPicture.asset(
          
          asset,
          alignment: Alignment.center,
          fit: BoxFit.cover,
          )),
    );
  }
}