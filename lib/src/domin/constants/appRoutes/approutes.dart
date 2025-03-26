import 'package:get/get.dart';
import '../../../presentation/view/homeScreenforUser/homeScreenforUser.dart';
import '../../../presentation/view/splashScreen/splashScreen.dart';

class AppRoute {
  static const String splashScreen = "/splash";
  static const String homescreenforuser = "/homescreenforuser";

  static List<GetPage> getPage = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homescreenforuser, page: () => const HomeScreenforUser()),
  ];
}
