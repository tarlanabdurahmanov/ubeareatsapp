import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'screens/main_screen.dart';
import 'screens/account/settings_screen.dart';
import 'screens/change_address_screen.dart';
import 'screens/email_verification_screen.dart';
import 'screens/landing_screen.dart';
import 'screens/password_screen.dart';
import 'screens/phone_input_screen.dart';
import 'screens/phone_verification_screen.dart';
import 'screens/welcome_screen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "UberMovetText",
          ),
          // home: child,
        );
      },
      child: MainScreen(),
    );
  }
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => MainScreen(),
    ),
    GoRoute(
      path: '/landing',
      builder: (BuildContext context, GoRouterState state) =>
          const LandingScreen(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (BuildContext context, GoRouterState state) =>
          const WelcomeScreen(),
    ),
    GoRoute(
      path: '/phoneEnter',
      builder: (BuildContext context, GoRouterState state) =>
          const PhoneInputScreen(),
    ),
    GoRoute(
      path: '/phoneVerification',
      builder: (BuildContext context, GoRouterState state) =>
          const PhoneVerificationScreen(),
    ),
    GoRoute(
      path: '/passwordEnter',
      builder: (BuildContext context, GoRouterState state) =>
          const PasswordScreen(),
    ),
    GoRoute(
      path: '/emailVerification',
      builder: (BuildContext context, GoRouterState state) =>
          const EmailVerificationScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) =>
          const SettingsScreen(),
    ),
    GoRoute(
      path: '/changeAddress',
      builder: (BuildContext context, GoRouterState state) =>
          const ChangeAddressScreen(),
    ),
    // GoRoute(
    //   path: '/:id',
    //   builder: (context, state) {
    //     // // use state.params to get router parameter values
    //     // //final family = Families.family(state.params['fid']!);
    //     // final id = state.params['id'];

    //     // return MovieDetails(id: id.toString());
    //   },
    // ),
  ],
);
