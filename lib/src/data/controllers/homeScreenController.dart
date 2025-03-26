import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/listOfVideosModel.dart';
import '../services/homeScreenServies.dart';

class HomePageController extends GetxController {
  var isLoading = false.obs;
  var errorMsg = "".obs;
  var vedioList = <VideosListClass>[].obs;

  @override
  void onInit() {
    getDataForHomeScreen();
    super.onInit();
  }

  Future getDataForHomeScreen() async {
    try {
      isLoading(true);
      final result =
          await HomeScreenServices.instance.getDataForHomeScreenServices();
      if (result['code'] != 200) {
        errorMsg.value = result['data'];
      } else {
        vedioList.value = result['data'];
      }

      update();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
