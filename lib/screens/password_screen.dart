import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/assets.dart';
import '../utils/text.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultSizedBox(height: 102.h),
            defaultText(
              "Welcome back, John",
              color: AppColors.black,
              fontSize: 20.csp,
            ),
            defaultSizedBox(height: 19.h),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: AppColors.gray4,
                hintText: "Please enter your password",
                hintStyle: TextStyle(color: AppColors.gray5),
                suffixIcon: Padding(
                    padding: EdgeInsets.only(
                      right: 20.w,
                      top: 10.h,
                      bottom: 10.h,
                      left: 10.w,
                    ),
                    child: SvgPicture.asset(AssetsSvg.eye)),
              ),
            ),
            defaultSizedBox(height: 29.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.gray4,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: defaultText(
                "I've forgotten my password",
                fontSize: 16.csp,
              ),
            ),
            defaultSizedBox(height: 22.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.gray4,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: defaultText(
                "I cant sign in",
                fontSize: 16.csp,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 54.h,
                  width: 54.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      backgroundColor: AppColors.gray4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AssetsSvg.arrowLeft,
                      // ignore: deprecated_member_use
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 55.h,
                  width: 120.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      backgroundColor: AppColors.gray4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () => context.push('/phoneVerification'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultText(
                          "Next",
                          color: AppColors.gray5,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.csp,
                        ),
                        defaultSizedBox(width: 14.w),
                        SvgPicture.asset(
                          AssetsSvg.arrowRight,
                          // ignore: deprecated_member_use
                          color: AppColors.gray5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            defaultSizedBox(bottomBar: true),
          ],
        ),
      ),
    );
  }
}
