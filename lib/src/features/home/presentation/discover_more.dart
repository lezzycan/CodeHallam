import 'package:codehallam/src/common_widget/separate_text.dart';
import 'package:codehallam/src/utils/constants/app_asset.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverMore extends StatelessWidget {
  const DiscoverMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover Top Picks',
                  style: GoogleFonts.fjallaOne(
                      color: Color(0XFF577395)),
                ),
                SeparateText(
                  textA: '+100',
                  textB: '  lessons',
                  styleA: GoogleFonts.fjallaOne(
                      color: Color(0XFF2D4663), fontSize: 20.sp),
                  styleB: GoogleFonts.fjallaOne(
                      color: Color(0XFF577395), fontSize: 10.sp),
                ),
              ],
            ),
            //gapH12,
            Container(
              width: 100.w,
              height: 30.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.primary,
              ),
              child: Text(
                'Explore more',
                style: GoogleFonts.fjallaOne(
                    color: AppColors.background),
              ),
            )
            //Image.asset(AppAsset.bannerImage)
          ],
        ),
        Transform.translate(
          offset: Offset(15.w, 18.h),
          child: Image.asset(AppAsset.bannerImage))
      ],
    );
  }
}
