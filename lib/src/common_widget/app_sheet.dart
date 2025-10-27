import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void openBottomSheet(BuildContext context, Widget content,
    {double? height, bool? isDismissible, bool? enableDrag}) {
  showModalBottomSheet(
      context: context,
      builder: (ctx) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: height,
              //  margin: EdgeInsets.only(bottom: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                // color: MeetColor.primaryWhiteColor,
              ),
              width: double.infinity,
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(), child: content),
            ),
          ),
      //backgroundColor: Colors.transparent,
      useSafeArea: true,
      enableDrag: enableDrag ?? true,
      isDismissible: isDismissible ?? true,
      isScrollControlled: true,
      useRootNavigator: true);
}
