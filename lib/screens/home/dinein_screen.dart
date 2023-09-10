import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/color.dart';
import '../../utils/custom_font_size.dart';
import '../../utils/size.dart';
import '../../utils/assets.dart';
import '../../utils/text.dart';

class DineInScreen extends StatelessWidget {
  const DineInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20.h),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _item();
      },
    );
  }

  Padding _item() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AssetsImage.food1,
                fit: BoxFit.cover,
                height: 150.h,
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // defaultSizedBox(),
                    // Container(
                    //   padding:
                    //       EdgeInsets.symmetric(horizontal: 25.w, vertical: 6.h),
                    //   decoration: BoxDecoration(
                    //     color: AppColors.secondary500,
                    //     borderRadius: BorderRadius.only(
                    //       topRight: Radius.circular(51.r),
                    //       bottomRight: Radius.circular(51.r),
                    //     ),
                    //   ),
                    //   child: defaultText(
                    //     "5 orders until \$8 reward",
                    //     fontSize: 14.csp,
                    //     color: AppColors.white,
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: SvgPicture.asset(AssetsSvg.heart),
                    ),
                  ],
                ),
              ),
            ],
          ),
          defaultSizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              defaultText(
                "Adenine Kitchen",
                fontSize: 16.csp,
              ),
              CircleAvatar(
                radius: 15.r,
                backgroundColor: AppColors.gray4,
                child: defaultText(
                  "4.4",
                  fontSize: 12.csp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
