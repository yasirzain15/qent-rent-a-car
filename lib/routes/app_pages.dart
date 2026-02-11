import 'package:get/get.dart';
import '../features/splash/views/splash_screen_1.dart';
import '../features/splash/views/splash_screen_2.dart';
import '../features/auth/views/login_screen.dart';

class AppPages {
  static const initial = '/';

  static final routes = [
    GetPage(name: '/', page: () => SplashScreen1()),
    GetPage(name: '/splash2', page: () => SplashScreen2()),
    GetPage(name: '/login', page: () => LoginScreen()),
  ];
}
