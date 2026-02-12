import 'package:get/get.dart';
import 'package:qent/routes/app_routes.dart';
import '../features/splash/views/splash_screen_1.dart';
import '../features/splash/views/splash_screen_2.dart';

import '../features/auth/views/login_screen.dart';
import '../features/auth/views/signup_screen.dart';
import '../features/auth/views/reset_password_screen.dart';
import '../features/auth/views/phone_verification_screen.dart';
import '../features/auth/views/otp_verification_screen.dart';

class AppPages {
  static const initial = AppRoutes.splash1;

  static final routes = [
    // Splash
    GetPage(
      name: AppRoutes.splash1,
      page: () => SplashScreen1(),
      transition: Transition.fadeIn,
    ),

    GetPage(
      name: AppRoutes.splash2,
      page: () => SplashScreen2(),
      transition: Transition.fadeIn,
    ),

    // Auth
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: AppRoutes.signup,
      page: () => const SignUpScreen(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: AppRoutes.resetPassword,
      page: () => const ResetPasswordScreen(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: AppRoutes.phoneVerification,
      page: () => const PhoneVerificationScreen(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: AppRoutes.otpVerification,
      page: () => OtpVerificationScreen(),
      transition: Transition.rightToLeft,
    ),

    // Home (future ready)
    // GetPage(
    //   name: AppRoutes.home,
    //   page: () => const HomeScreen(),
    // ),
  ];
}
