import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/assets.dart';
import '../utils/text.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        leading: BackButton(color: AppColors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: false,
        title: defaultText(
          "Order details",
          fontSize: 20.csp,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AssetsImage.clock),
                    defaultSizedBox(width: 22.w),
                    defaultText(
                      "Deliver now",
                      fontSize: 16.csp,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.h),
                    backgroundColor: AppColors.gray6,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                  child: defaultText(
                    "Schedule",
                  ),
                )
              ],
            ),
          ),
          _divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.gray4,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.zero,
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: SvgPicture.asset(
                    AssetsSvg.search,
                    height: 26.w,
                    width: 26.w,
                  ),
                ),
                hintText: "Enter a new address",
                hintStyle: TextStyle(
                  fontSize: 16.csp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          defaultSizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: defaultText(
              "Nearby",
              fontSize: 16.csp,
            ),
          ),
          defaultSizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsSvg.location),
                    defaultSizedBox(width: 10.w),
                    defaultText(
                      "Current location",
                      fontSize: 16.csp,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.h),
                    backgroundColor: AppColors.gray6,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                  child: defaultText(
                    "Enable",
                  ),
                )
              ],
            ),
          ),
          defaultSizedBox(height: 8.h),
          _divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: defaultText(
              "Recent locations",
              fontSize: 16.csp,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: SvgPicture.asset(AssetsSvg.marker)),
                defaultSizedBox(width: 20.w),
                Flexible(
                  child: Column(
                    children: [
                      defaultSizedBox(height: 27.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              defaultText("San Francisco Bay Area",
                                  fontSize: 16.csp),
                              defaultText("CA",
                                  fontSize: 16.csp, color: AppColors.gray7),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.gray4,
                            child: SvgPicture.asset(
                              AssetsSvg.edit,
                            ),
                          ),
                        ],
                      ),
                      defaultSizedBox(height: 15.h),
                      const Divider(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _divider() {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Divider(
        thickness: 10,
        color: AppColors.gray4,
      ),
    );
  }
}
