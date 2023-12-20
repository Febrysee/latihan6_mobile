import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp/home_page.dart';

class RouteController extends GetxController {
  //TODO: Implement HomeController

  RxInt indexWidget = 0.obs;

  void changeNav(int index) {
    indexWidget.value = index;
    update();
  }

  List<Widget> myWidgets = [
    HomePage(),
    Center(
      child: Text(
        "sreach",
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "1",
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Cart",
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];
}
