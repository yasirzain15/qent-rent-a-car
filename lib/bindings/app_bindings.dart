import 'package:get/get.dart';
import '../features/auth/controller/login_controller.dart';
// import other controllers as needed
// import '../features/home/controller/home_controller.dart';
// import '../features/booking/controller/booking_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Auth Module
    Get.lazyPut<LoginController>(() => LoginController());

    // Home Module
    // Get.lazyPut<HomeController>(() => HomeController());

    // Booking Module
    // Get.lazyPut<BookingController>(() => BookingController());

    // Add more controllers here as you build other features
  }
}
