import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/assets.dart';
import '../utils/text.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AssetsImage.landing,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 15.w, right: 15.w, top: 11.h, bottom: 19.h),
                child: defaultText(
                  "Use your uber account to get started",
                  fontSize: 24.csp,
                  fontWeight: FontWeight.w500,
                  height: 36.h / 24.sp,
                ),
              ),
              InkWell(
                onTap: () => context.push('/phoneEnter'),
                child: IgnorePointer(
                  child: Container(
                    margin: EdgeInsets.only(left: 15.w, right: 15.w),
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
                      inputDecoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      inputBorder: InputBorder.none,
                      onSaved: (PhoneNumber number) {},
                    ),
                  ),
                ),
              ),
              defaultSizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
