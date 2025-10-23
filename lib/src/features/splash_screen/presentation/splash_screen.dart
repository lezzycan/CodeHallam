// import 'package:codehallam/src/routing/app_router.dart';
// import 'package:codehallam/src/utils/constants/app_colors.dart';
// import 'package:codehallam/src/utils/constants/app_sizes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SplashScreen extends ConsumerStatefulWidget {
//   const SplashScreen({super.key});
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends ConsumerState<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     )..forward();
//     if(mounted) {
//      Future.delayed(const Duration(seconds: 3), () {
//       GoRouter.of(context).goNamed(AppRoute.login.name);
//     });
//     }
    
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF672146),
//       body: FadeTransition(
//         opacity: _controller,
//         child: Center(
//           child: Text(
//             '''
//           Sheffield
//           Hallam
//           University
//           ''',
//             style: GoogleFonts.alfaSlabOne(
//                 color: AppColors.background,
//                 fontSize: Sizes.p32.sp,
//                 fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     );
//   }
// }
