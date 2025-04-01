import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController marketController;
  @override
  void onInit() {
    // TODO: implement onInit
    marketController = TabController(length: 4, vsync: this);
    super.onInit();
  }
}
