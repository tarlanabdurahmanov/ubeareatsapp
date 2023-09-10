import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../utils/color.dart';
import '../../utils/custom_font_size.dart';
import '../../utils/size.dart';
import '../../utils/assets.dart';
import '../../utils/text.dart';
import 'delivery_screen.dart';
import 'dinein_screen.dart';
import 'pickup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 110.h,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Column(
            children: [
              TabBar(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: AppColors.black,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 14.csp,
                  fontWeight: FontWeight.w500,
                ),
                tabs: const [
                  Tab(text: 'Devivery'),
                  Tab(text: 'Pickup'),
                  Tab(text: 'Dine-in'),
                ],
              ),
              defaultSizedBox(height: 21.h),
              GestureDetector(
                onTap: () => context.push("/changeAddress"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    defaultSizedBox(width: 30.w),
                    Row(
                      children: [
                        defaultText("Now", fontSize: 18.csp),
                        defaultSizedBox(width: 4.h),
                        SvgPicture.asset(AssetsSvg.dot),
                        defaultSizedBox(width: 4.h),
                        defaultText("London Hall", fontSize: 18.csp),
                        defaultSizedBox(width: 4.h),
                        SvgPicture.asset(AssetsSvg.arrowDown),
                      ],
                    ),
                    SvgPicture.asset(
                      AssetsSvg.adjust,
                      width: 30.w,
                      height: 30.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          DeliveryScreen(),
          PickUpScreen(),
          DineInScreen(),
        ],
      ),
    );
  }
}
