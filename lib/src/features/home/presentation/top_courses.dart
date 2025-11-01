
import 'package:codehallam/src/features/home/domain/courses_model.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCoursesWidget extends StatelessWidget {
  const TopCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top rated courses',
              style: GoogleFonts.fjallaOne(
                  color: Color(0XFF2C2C2C),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'See all',
              style: GoogleFonts.fjallaOne(
                  color: AppColors.primary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        gapH12,
        SizedBox(
          height: 180.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 100.h,
                  width: 180.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.background),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Container(
                          height: 100.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              image: DecorationImage(
                                  image: AssetImage(
                                      topCoursesContent[index].asset),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      gapH16,
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal:12.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              topCoursesContent[index].courseTitle,
                              style: GoogleFonts.fjallaOne(
                                  color: Color(0XFF2C2C2C),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            gapH16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 20.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: Colors.lightBlueAccent
                                  ),
                                  child: Text(topCoursesContent[index].time,
                                  style: GoogleFonts.fjallaOne(color: AppColors.onPrimary, fontSize: 12.sp),
                                  )),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow,size: 15.r,),
                                    Text(topCoursesContent[index].ratings,
                                     style: GoogleFonts.fjallaOne(color: AppColors.grey, fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => gapW12,
              itemCount: 2),
        )
      ],
    );
  }
}
