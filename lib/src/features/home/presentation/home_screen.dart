import 'package:codehallam/src/common_widget/search_field.dart';
import 'package:codehallam/src/features/home/presentation/free_courses.dart';
import 'package:codehallam/src/features/home/presentation/popular_courses.dart';
import 'package:codehallam/src/features/home/presentation/top_courses.dart';

import 'package:codehallam/src/features/home/presentation/discover_more.dart';

import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.h),
          child: AppBar(
            backgroundColor: AppColors.blueColor,
            elevation: 2.0,
            centerTitle: false,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Column(
                  children: [
                    ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          'Hi Lezzy',
                          style: GoogleFonts.fjallaOne(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.background,
                          ),
                        ),
                        subtitle: Text(
                          'Find your lessons today!',
                          style: GoogleFonts.fjallaOne(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: AppColors.background),
                        )),
                    SearchField(
                      hint: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 12.sp,
                            color: AppColors.iconColor,
                          ),
                          gapW8,
                          Text(
                            'Search now',
                            style: GoogleFonts.fjallaOne(
                                color: AppColors.iconColor, fontSize: 12.sp),
                          )
                        ],
                      ),
                      // hintText: 'Search now',
                      fillColor: AppColors.onPrimary,
                      suffixIcon: Icon(
                        Icons.tune,
                        color: AppColors.onBackground,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
      backgroundColor: AppColors.surface,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 140.h,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.withAlpha(123),
                    borderRadius: BorderRadius.circular(14.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                  child: DiscoverMore(),
                ),
              ),
              gapH12,
              TopCoursesWidget(),
              gapH12,
               PopularCoursesWidget(),
              gapH12,
              FreeCoursesWidget() 
            ],
          ),
        ),
      ),
    );
  }
}
