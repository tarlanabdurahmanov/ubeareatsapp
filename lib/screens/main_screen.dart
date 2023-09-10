import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubereatsapp/screens/search_screen.dart';
import '../utils/color.dart';
import '../utils/assets.dart';
import 'account/account_screen.dart';
import 'cart_screen.dart';
import 'home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [
        HomeScreen(),
        SearchScreen(),
        HomeScreen(),
        CartScreen(),
        AccountScreen(),
      ][selectedPageIndex],
      bottomNavigationBar: _item(),
    );
  }

  NavigationBar _item() {
    return NavigationBar(
      surfaceTintColor: Colors.transparent,
      selectedIndex: selectedPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          selectedPageIndex = index;
        });
      },
      shadowColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      backgroundColor: Colors.white,
      destinations: <NavigationDestination>[
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AssetsSvg.menuHome,
            color: AppColors.black,
          ),
          icon: SvgPicture.asset(
            AssetsSvg.menuHome,
            color: AppColors.menuDisabledIconColor,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AssetsSvg.menuBrowse,
            color: AppColors.black,
          ),
          icon: SvgPicture.asset(AssetsSvg.menuBrowse),
          label: 'Browse',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AssetsSvg.menuGrocery,
            color: AppColors.black,
          ),
          icon: SvgPicture.asset(AssetsSvg.menuGrocery),
          label: 'Grocery',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AssetsSvg.menuBaskets,
            color: AppColors.black,
          ),
          icon: SvgPicture.asset(AssetsSvg.menuBaskets),
          label: 'Baskets',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AssetsSvg.menuAccount,
            color: AppColors.black,
          ),
          icon: SvgPicture.asset(AssetsSvg.menuAccount),
          label: 'Account',
        ),
      ],
    );
  }
}
