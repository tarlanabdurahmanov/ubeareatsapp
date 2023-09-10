import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/assets.dart';
import '../utils/text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 108.h),
              child: SvgPicture.asset(AssetsSvg.checkCircleBlack),
            ),
            defaultSizedBox(height: 28.ch),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: defaultText(
                "All set.",
                fontSize: 20.csp,
              ),
            ),
            defaultSizedBox(height: 28.ch),
            defaultText(
              "You’ll be signed into your account in a moment. If nothing happens, click continue",
              fontSize: 12.csp,
              color: AppColors.gray3,
            ),
            defaultSizedBox(height: 28.ch),
            SizedBox(
              height: 55.h,
              width: 160.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: AppColors.gray4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  context.pop();
                  context.push('/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultText(
                      "Continue",
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.csp,
                    ),
                    defaultSizedBox(width: 14.w),
                    SvgPicture.asset(
                      AssetsSvg.arrowRight,
                      // ignore: deprecated_member_use
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
