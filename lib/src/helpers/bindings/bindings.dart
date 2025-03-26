import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<PopularProductController>(() => PopularProductController(),fenix: true);
    // Get.lazyPut<LoginController>(() => LoginController(),fenix: true);
    // Get.lazyPut<CartController>(() => CartController(), fenix: true);
  }
}
