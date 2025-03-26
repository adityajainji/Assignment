import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/domin/constants/appRoutes/approutes.dart';
import 'src/helpers/bindings/bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      initialBinding: AppBindings(),
      getPages: AppRoute.getPage,
    );
  }
}
