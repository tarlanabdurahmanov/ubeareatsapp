import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubereatsapp/models/category_model.dart';
import 'package:ubereatsapp/providers/search_provider.dart';
import 'package:ubereatsapp/utils/assets.dart';
import 'package:ubereatsapp/utils/color.dart';
import 'package:ubereatsapp/utils/custom_font_size.dart';
import 'package:ubereatsapp/utils/size.dart';
import 'package:ubereatsapp/utils/text.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProviderAsync = ref.watch(searchProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      child: SvgPicture.asset(AssetsSvg.eye),
                    ),
                  ),
                ),
                defaultSizedBox(height: 11.h),
                defaultText(
                  "All categories",
                  fontSize: 24.csp,
                ),
                defaultSizedBox(height: 16.h),
                searchProviderAsync.when(
                  data: (data) {
                    return _list(data);
                  },
                  error: (_, __) {
                    return Center(
                        child: defaultText("Error Data...", color: Colors.red));
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.black),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _list(List<CategoryModel> data) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 11,
        childAspectRatio: 1.1,
      ),
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return _item(data[index]);
      },
    );
  }

  Flexible _item(CategoryModel category) {
    return Flexible(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Image.asset(
              category.image,
              width: 166.w,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            width: 166.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
              border: Border.all(
                color: AppColors.gray11,
              ),
            ),
            child: Center(
              child: defaultText(
                category.title,
                fontSize: 16.csp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
