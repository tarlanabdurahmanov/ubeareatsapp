import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../utils/color.dart';
import '../../utils/custom_font_size.dart';
import '../../utils/size.dart';
import '../../utils/assets.dart';
import '../../utils/text.dart';

class PickUpScreen extends StatelessWidget {
  const PickUpScreen({super.key});

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 360.h,
            child: Stack(
              children: [
                GoogleMap(
                  indoorViewEnabled: true,
                  myLocationButtonEnabled: false,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    // _controller.complete(controller);
                  },
                ),
                Container(
                  height: 48.h,
                  margin: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.r),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 17.w, right: 15.w),
                        child: SvgPicture.asset(
                          AssetsSvg.search,
                          height: 26.w,
                          width: 26.w,
                        ),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.h),
                            height: double.infinity,
                            width: 1,
                            color: AppColors.gray10,
                          ),
                          defaultSizedBox(width: 10.w),
                          SvgPicture.asset(
                            AssetsSvg.adjust,
                            height: 26.w,
                            width: 26.w,
                          ),
                          defaultSizedBox(width: 15.w),
                        ],
                      ),
                      hintText: "What are you craving?",
                      hintStyle: TextStyle(
                        fontSize: 16.csp,
                        color: const Color(0xFF545454),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _categoryItem(i: 1),
                _categoryItem(i: 2),
                _categoryItem(i: 3),
                _categoryItem(i: 4),
              ],
            ),
          ),
          defaultSizedBox(height: 12.h),
          _item(),
          defaultSizedBox(height: 20.h),
          _item(),
          defaultSizedBox(height: 20.h),
          _item(),
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
