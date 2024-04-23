import 'package:casher_lagi/screens/admin/auth/bindings/auth_bindings.dart';
import 'package:casher_lagi/screens/admin/auth/login/login.dart';
import 'package:casher_lagi/screens/admin/auth/register/register.dart';
import 'package:casher_lagi/screens/admin/home/bindings/home_bindings.dart';
import 'package:casher_lagi/screens/admin/home/home.dart';
import 'package:get/get.dart';
import '../screens/admin/splash_screen/bindings/splash_bindings.dart';
import '../screens/admin/splash_screen/splash_screen.dart';

class AppRoutes {
  static const initial = "/splash_screen";
  static final routes = [
    GetPage(
      name: '/splash_screen',
      page: () => SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(name: '/login_admin', page: () => Login(), binding: AuthBinding()),
    GetPage(name: '/register_admin', page: () => Register(), binding: AuthBinding()),
    GetPage(name: '/home_admin', page: () => Home(), binding: HomeBinding())
  ];
}
