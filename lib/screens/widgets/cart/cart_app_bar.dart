import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubereatsapp/utils/color.dart';
import 'package:ubereatsapp/utils/custom_font_size.dart';
import 'package:ubereatsapp/utils/size.dart';
import 'package:ubereatsapp/utils/assets.dart';
import 'package:ubereatsapp/utils/text.dart';

class CartAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CartAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      actions: [
        SizedBox(
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 0.w, horizontal: 20.h),
              backgroundColor: AppColors.gray6,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AssetsSvg.order),
                defaultSizedBox(width: 10.w),
                defaultText("Orders"),
              ],
            ),
          ),
        ),
        defaultSizedBox(width: 17.w),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.ch),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, bottom: 10.h),
              child: defaultText(
                "Carts",
                fontSize: 36.csp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(112.h);
}
