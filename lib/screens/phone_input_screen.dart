import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/assets.dart';
import '../utils/text.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 102.h, left: 10.w, bottom: 18.h),
              child: defaultText(
                "Enter your mobile number",
                fontSize: 20.csp,
                height: 20.csp / 28.csp,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              decoration: BoxDecoration(
                color: AppColors.gray9,
                border: Border.all(
                  color: AppColors.gray,
                  width: 1,
                ),
              ),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {},
                onInputValidated: (bool value) {},
                textStyle: TextStyle(
                  color: AppColors.black,
                  fontSize: 16.csp,
                  fontWeight: FontWeight.w400,
                ),
                selectorButtonOnErrorPadding: 0,
                spaceBetweenSelectorAndTextField: 0,
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  trailingSpace: false,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(
                  color: AppColors.black,
                  height: 24.h / 16.csp,
                  fontSize: 16.csp,
                  fontWeight: FontWeight.w400,
                ),
                initialValue: number,
                textFieldController: controller,
                formatInput: true,
                inputDecoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 4, bottom: 12.h),
                  border: InputBorder.none,
                ),
                inputBorder: InputBorder.none,
                onSaved: (PhoneNumber number) {},
              ),
            ),
            defaultSizedBox(height: 28.h),
            SizedBox(
              height: 55.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () => context.push('/passwordEnter'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaultSizedBox(width: 18),
                    defaultText(
                      "Next",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.csp,
                    ),
                    SvgPicture.asset(AssetsSvg.arrowRight),
                  ],
                ),
              ),
            ),
            defaultSizedBox(height: 12.h),
            defaultText(
              "By proceeding, you consent to get calls, Whatsapp or SMS messages, including by automated means, from uber and its affiliates to the number provided.",
              color: AppColors.gray3,
              fontSize: 12,
            ),
            defaultSizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    height: 1.h,
                    color: AppColors.gray3,
                  ),
                ),
                defaultSizedBox(width: 10.h),
                defaultText(
                  "or",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.gray3,
                ),
                defaultSizedBox(width: 10.h),
                Flexible(
                  child: Container(
                    height: 1.h,
                    color: AppColors.gray3,
                  ),
                ),
              ],
            ),
            defaultSizedBox(height: 18.h),
            SizedBox(
              height: 55.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.black),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () => context.push('/passwordEnter'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AssetsSvg.google),
                    const Spacer(),
                    defaultText(
                      "Continue with google",
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.csp,
                    ),
                    const Spacer(),
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
