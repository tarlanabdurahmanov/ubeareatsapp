import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/color.dart';
import '../../utils/custom_font_size.dart';
import '../../utils/size.dart';
import '../../utils/assets.dart';
import '../../utils/text.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      defaultSizedBox(height: 15.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: AppColors.gray6,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(AssetsImage.image2),
                            Row(
                              children: [
                                defaultText(
                                  "American",
                                  fontSize: 18.csp,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                defaultSizedBox(width: 12.w),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        child: Column(
                          children: [
                            defaultSizedBox(height: 15.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 5.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.gray6,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset(AssetsImage.image7),
                                  Row(
                                    children: [
                                      defaultText(
                                        "Grocery",
                                        fontSize: 18.csp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            color: AppColors.secondary500,
                            border:
                                Border.all(color: AppColors.white, width: 2),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: defaultText(
                            "Promo",
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          defaultSizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _categoryItem(i: 1),
                _categoryItem(i: 2),
                _categoryItem(i: 3),
                _categoryItem(i: 4, menu: true),
              ],
            ),
          ),
          defaultSizedBox(height: 9.h),
          Divider(
            thickness: 10,
            color: AppColors.gray8,
          ),
          defaultSizedBox(height: 12.h),
          _item(),
          defaultSizedBox(height: 20.h),
          _item(),
          _divider(),
          SizedBox(
            height: 170.h,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 15.w),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Center(child: _promoScrollItem());
              },
            ),
          ),
          _divider(),
          _item(),
          defaultSizedBox(height: 20.h),
          _item(),
          // ListView.separated(
          //   physics: NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   itemBuilder: (ctx, int) {
          //     return _item();
          //   },
          //   separatorBuilder: (ctxt, inde) {
          //     // return Padding(
          //     //   padding: EdgeInsets.only(top: 10, bottom: 10),
          //     //   child: Divider(
          //     //     thickness: 10,
          //     //     color: AppColors.gray4,
          //     //   ),
          //     // );
          //     // return defaultSizedBox(height: 20.h);
          //   },
          //   itemCount: 5,
          // )
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

  Container _promoScrollItem() {
    return Container(
      height: 165.h,
      margin: EdgeInsets.only(right: 9.w),
      padding: EdgeInsets.only(left: 18.w),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h, bottom: 13.h, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                defaultText(
                  "Order from these\n restaurants and save",
                  fontSize: 16.csp,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    children: [
                      defaultText(
                        "Browse offer",
                        fontSize: 12.csp,
                        fontWeight: FontWeight.w400,
                      ),
                      defaultSizedBox(width: 5.w),
                      SvgPicture.asset(
                        AssetsSvg.arrowRight,
                        // ignore: deprecated_member_use
                        color: Colors.black,
                        height: 12.w,
                        width: 12.w,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            AssetsImage.user,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ],
      ),
    );
  }

  Padding _item() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: AppColors.secondary500,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(51.r),
                          bottomRight: Radius.circular(51.r),
                        ),
                      ),
                      child: defaultText(
                        "5 orders until \$8 reward",
                        fontSize: 14.csp,
                        color: AppColors.white,
                      ),
                    ),
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
          Row(
            children: [
              defaultText(
                "\$0.29 Delivery Fee",
                color: AppColors.gray7,
                fontSize: 14.csp,
                fontWeight: FontWeight.w400,
              ),
              defaultSizedBox(width: 4.h),
              SvgPicture.asset(AssetsSvg.dot),
              defaultSizedBox(width: 4.h),
              defaultText(
                "10-25 min",
                color: AppColors.gray7,
                fontWeight: FontWeight.w400,
                fontSize: 14.csp,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _categoryItem({required int i, bool menu = false}) {
    return Column(
      children: [
        Container(
          height: 70.w,
          width: 70.w,
          decoration: BoxDecoration(
            color: AppColors.gray6,
            borderRadius: BorderRadius.circular(5.5.r),
          ),
          child: !menu
              ? Image.asset("assets/image/category/${(i + 1)}.png")
              : Center(child: SvgPicture.asset(AssetsSvg.menu)),
        ),
        defaultSizedBox(height: 2.h),
        defaultText(
          !menu ? ((i == 1) ? "Pet" : "Alcohol") : "More",
          fontSize: 14.csp,
        )
      ],
    );
  }
}
