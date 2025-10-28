import 'package:codehallam/src/dashboard/presentation/notifier/dashboard_notifier.dart';
import 'package:codehallam/src/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends ConsumerStatefulWidget {
  const DashBoard({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashBoardState();
}

class _DashBoardState extends ConsumerState<DashBoard> {
  @override
  Widget build(BuildContext context) {
    final dashboardProvider = ref.watch(dashBoardNotifier);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.onPrimary,
         // fixedColor: AppColors.onPrimary,
          elevation: 0,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.onBackground,
          //selectedFontSize: 12.sp,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.fjallaOne(color: AppColors.onBackground, fontSize: 10.sp) ,
          unselectedLabelStyle:GoogleFonts.fjallaOne(color: AppColors.onBackground, fontSize: 10.sp) ,
          type: BottomNavigationBarType.fixed,
           onTap: (index) {
            ref.read(dashBoardNotifier.notifier).updateIndex(index);
          },
          currentIndex: dashboardProvider.currentIndex,
          
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: dashboardProvider.icons[0],
                label: 'Home',
                /* backgroundColor: dashboardProvider.currentIndex == 0
                    ? AppColors.primary
                    : AppColors.onPrimary */
                    ),
            BottomNavigationBarItem(
                icon: dashboardProvider.icons[1],
                 label: 'Explore Courses',
               /*  backgroundColor: dashboardProvider.currentIndex == 1
                    ? AppColors.primary
                    : AppColors.onPrimary */
                    ),
            BottomNavigationBarItem(
                icon: dashboardProvider.icons[2],
                 label: 'My Learning',
                // backgroundColor: dashboardProvider.currentIndex == 2
                    /* ? AppColors.primary
                    : AppColors.onPrimary */
                    ),
            BottomNavigationBarItem(
                icon: dashboardProvider.icons[3],
                 label: 'Profile',
               /*  backgroundColor: dashboardProvider.currentIndex == 3
                    ? AppColors.primary
                    : AppColors.onPrimary */
                    )
          ]),
          body: dashboardProvider.pages[dashboardProvider.currentIndex],
    );
  }
}
