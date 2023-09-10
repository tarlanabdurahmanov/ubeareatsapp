import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/color.dart';
import '../../utils/custom_font_size.dart';
import '../../utils/size.dart';
import '../../utils/assets.dart';
import '../../utils/text.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: defaultText(
          "Settings",
          fontSize: 20.csp,
          fontWeight: FontWeight.w400,
        ),
        titleSpacing: 0,
        leading: IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: SvgPicture.asset(
            AssetsSvg.arrowLeft,
            // ignore: deprecated_member_use
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 45.r, // Image radius
              backgroundImage: AssetImage(AssetsImage.landing),
            ),
          ),
          defaultSizedBox(height: 20.h),
          Center(
            child: defaultText(
              "John Doe",
              fontSize: 18.csp,
              fontWeight: FontWeight.w400,
              height: 22.h / 18.csp,
            ),
          ),
          defaultSizedBox(height: 15.h),
          Center(
            child: defaultText(
              "EDIT ACCOUNT",
              fontSize: 16.csp,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary600,
              height: 20.h / 16.csp,
            ),
          ),
          defaultSizedBox(height: 53.h),
          Divider(
            color: AppColors.gray2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.w, top: 21.h),
            child: defaultText(
              "Saved places",
              fontSize: 18.csp,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
              height: 22.h / 18.csp,
            ),
          ),
          defaultSizedBox(height: 20.h),
          ListTile(
            dense: true,
            leading: SizedBox(
              width: 24.w,
              height: 24.w,
              child: Center(child: SvgPicture.asset(AssetsSvg.home)),
            ),
            title: defaultText(
              "Home",
              fontSize: 16.csp,
              height: 24.h / 16.csp,
              fontWeight: FontWeight.w400,
            ),
            subtitle: defaultText(
              "Add home",
              fontSize: 12.csp,
              height: 20.h / 12.csp,
              fontWeight: FontWeight.w400,
              color: AppColors.gray7,
            ),
            contentPadding: EdgeInsets.only(left: 17.w),
            horizontalTitleGap: 0,
            onTap: () {},
          ),
          ListTile(
            dense: true,
            leading: SizedBox(
              width: 24.w,
              height: 24.w,
              child: Center(child: SvgPicture.asset(AssetsSvg.work)),
            ),
            title: defaultText(
              "Work",
              fontSize: 16.csp,
              height: 24.h / 16.csp,
              fontWeight: FontWeight.w400,
            ),
            subtitle: defaultText(
              "Add work",
              fontSize: 12.csp,
              height: 20.h / 12.csp,
              fontWeight: FontWeight.w400,
              color: AppColors.gray7,
            ),
            contentPadding: EdgeInsets.only(left: 17.w),
            horizontalTitleGap: 0,
            onTap: () {},
          ),
          Divider(
            color: AppColors.gray2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.w, top: 28.h),
            child: defaultText(
              "Other options",
              fontSize: 18.csp,
              fontWeight: FontWeight.w400,
              height: 22.h / 18.csp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.w, top: 24.h),
            child: defaultText(
              "Sign Out",
              fontSize: 16.csp,
              color: AppColors.secondary600,
              height: 24.h / 16.csp,
            ),
          )
        ],
      ),
    );
  }
}
