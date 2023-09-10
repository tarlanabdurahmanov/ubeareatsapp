import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubereatsapp/models/cart_model.dart';
import 'package:ubereatsapp/utils/color.dart';
import 'package:ubereatsapp/utils/custom_font_size.dart';
import 'package:ubereatsapp/utils/size.dart';
import 'package:ubereatsapp/utils/assets.dart';
import 'package:ubereatsapp/utils/text.dart';

class CartItemWidget extends StatelessWidget {
  final Cart cart;

  const CartItemWidget({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 33.r,
          backgroundImage: AssetImage(cart.image),
        ),
        defaultSizedBox(width: 16.w),
        Flexible(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(
                        cart.title,
                        fontSize: 16.csp,
                      ),
                      defaultSizedBox(height: 2.h),
                      Row(
                        children: [
                          defaultText(
                            "${cart.item} item",
                            fontSize: 14.csp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray7,
                          ),
                          defaultSizedBox(width: 3.w),
                          SvgPicture.asset(AssetsSvg.dot),
                          defaultSizedBox(width: 3.w),
                          defaultText(
                            "US\$${cart.price}",
                            fontSize: 14.csp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray7,
                          ),
                        ],
                      ),
                      defaultSizedBox(height: 2.h),
                      defaultText(
                        "Deliver to San Franciscao Bay Area",
                        fontSize: 14.csp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.gray7,
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AssetsSvg.chevronRight,
                  ),
                ],
              ),
              defaultSizedBox(height: 20.h),
              const Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
