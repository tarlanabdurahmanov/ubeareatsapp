import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/text.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            defaultSizedBox(bottomBar: true, height: 25.h),
            Center(
              child: defaultText(
                "All categories",
                fontSize: 20.csp,
                fontWeight: FontWeight.w400,
              ),
            ),
            defaultSizedBox(height: 30.h),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 4,
                mainAxisSpacing: 15.0,
                children: List.generate(
                  19,
                  (index) {
                    return _categoryItem(i: index);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _categoryItem({required int i}) {
    return Column(
      children: [
        Container(
          height: 70.w,
          width: 70.w,
          decoration: BoxDecoration(
            color: AppColors.gray6,
            borderRadius: BorderRadius.circular(5.5.r),
          ),
          child: Image.asset("assets/image/category/${(i + 1)}.png"),
        ),
        defaultSizedBox(height: 2.h),
        defaultText(
          (i == 1) ? "Convenience" : "Alcohol",
          fontSize: 14.csp,
        )
      ],
    );
  }
}
