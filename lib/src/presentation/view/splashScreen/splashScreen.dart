import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domin/constants/appRoutes/approutes.dart';
import '../../theme/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAndToNamed(AppRoute.homescreenforuser);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height * 0.3,
                child: const Image(
                  image: AssetImage(AppImages.mainLogo),
                ),
              ),
            ),
            const Spacer(flex: 2),
            Container(
              child: Text(
                "version " + "1.0.0",
              ),
            ),
            Container(
              child: Text(
                "Assignment",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
