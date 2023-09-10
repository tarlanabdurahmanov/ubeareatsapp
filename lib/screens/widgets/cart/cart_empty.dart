import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubereatsapp/utils/color.dart';
import 'package:ubereatsapp/utils/custom_font_size.dart';
import 'package:ubereatsapp/utils/size.dart';
import 'package:ubereatsapp/utils/assets.dart';
import 'package:ubereatsapp/utils/text.dart';

class CartEmptyWidget extends StatelessWidget {
  const CartEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: SvgPicture.asset(AssetsSvg.cartEmpty)),
        defaultText(
          "Add items to start a basket",
          fontSize: 20.csp,
          textAlign: TextAlign.center,
        ),
        defaultText(
          "Once you add items from a restuarant or\nstore, your basket will appear here.",
          fontSize: 16.csp,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
        ),
        defaultSizedBox(height: 38.ch),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            backgroundColor: AppColors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {},
          child: defaultText(
            "Start Shopping",
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14.csp,
          ),
        ),
      ],
    );
  }
}
