import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import '../utils/color.dart';
import '../utils/custom_font_size.dart';
import '../utils/size.dart';
import '../utils/assets.dart';
import '../utils/text.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  Color focusedBorderColor = const Color.fromRGBO(23, 171, 144, 1);
  Color fillColor = const Color.fromRGBO(243, 246, 249, 0);
  Color borderColor = const Color.fromRGBO(23, 171, 144, 0.4);

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 16.csp,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
      // border: Border.all(color: borderColor),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultSizedBox(height: 102.h),
            defaultText(
              "Enter the 4-digit code sent to you at 05599224612",
              color: AppColors.black,
              fontSize: 20.csp,
            ),
            defaultSizedBox(height: 19.h),
            Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              hapticFeedbackType: HapticFeedbackType.selectionClick,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              followingPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: AppColors.gray,
                      width: 2,
                    ),
                    color: AppColors.gray),
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border.all(
                    color: AppColors.black,
                    width: 2,
                  ),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  border: Border.all(
                    color: AppColors.black,
                    width: 2,
                  ),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
            ),
            defaultSizedBox(height: 29.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.gray4,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: defaultText(
                "I haven’t recieved a code (0.09)",
                fontSize: 16.csp,
                color: AppColors.gray5,
              ),
            ),
            defaultSizedBox(height: 22.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.gray4,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: defaultText(
                "Log in with password",
                fontSize: 16.csp,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 54.h,
                  width: 54.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      backgroundColor: AppColors.gray4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AssetsSvg.arrowLeft,
                      // ignore: deprecated_member_use
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 55.h,
                  width: 120.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      backgroundColor: AppColors.gray4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () => context.push('/emailVerification'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultText(
                          "Next",
                          color: AppColors.gray5,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.csp,
                        ),
                        defaultSizedBox(width: 14.w),
                        SvgPicture.asset(
                          AssetsSvg.arrowRight,
                          // ignore: deprecated_member_use
                          color: AppColors.gray5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            defaultSizedBox(bottomBar: true),
          ],
        ),
      ),
    );
  }
}
