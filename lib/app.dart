import 'dart:io';


import 'package:codehallam/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        splitScreenMode: Platform.isAndroid ? true : false,
        ensureScreenSize: true,
        builder: (context, child) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                 navigatorKey: navigatorKey,
                 onGenerateRoute: RouteManager.generateRoute,
                 initialRoute: '/',
                 home: child,
              ),
            ),
          );
        });
  }
}
