import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../utils/color.dart';
import '../../utils/custom_font_size.dart';
import '../../utils/assets.dart';
import '../../utils/text.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
        centerTitle: false,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15.w),
              height: 36.h,
              width: 36.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  AssetsImage.landing,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            defaultText(
              "John Doe",
              fontSize: 18.csp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.order)),
              ),
              title: defaultText(
                "Orders",
                fontSize: 14.csp,
              ),
              horizontalTitleGap: 20.w,
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.favourites)),
              ),
              title: defaultText(
                "Your favourites",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(
                    child: SvgPicture.asset(AssetsSvg.restaurantRewards)),
              ),
              title: defaultText(
                "Restaurant Rewards",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.wallet)),
              ),
              title: defaultText(
                "Wallet",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.gift)),
              ),
              title: defaultText(
                "Send a gift",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.business)),
              ),
              title: defaultText(
                "Business preferences",
                fontSize: 14.csp,
              ),
              subtitle: defaultText(
                "Make work meals quicker and easier",
                fontSize: 14.csp,
                color: AppColors.secondary500,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.help)),
              ),
              title: defaultText(
                "Help",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.promotions)),
              ),
              title: defaultText(
                "Promotions",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.uberPass)),
              ),
              title: defaultText(
                "Uber Pass",
                fontSize: 14.csp,
              ),
              subtitle: defaultText(
                "Join free for 1 month",
                fontSize: 14.csp,
                color: AppColors.secondary500,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.deliver)),
              ),
              title: defaultText(
                "Deliver with Uber",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () {},
            ),
            ListTile(
              dense: true,
              leading: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Center(child: SvgPicture.asset(AssetsSvg.settings)),
              ),
              title: defaultText(
                "Settings",
                fontSize: 14.csp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 22.w, top: 3.h, bottom: 3.h),
              horizontalTitleGap: 20.w,
              onTap: () => context.push("/settings"),
            ),
          ],
        ),
      ),
    );
  }
}
