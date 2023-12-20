import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp/route.dart';
import 'auth_controller.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final AuthController _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: _authController.isLoggedIn.value
          ? '/route'
          : '/login', // Set initial route based on login status
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/route', page: () => RoutePage()),
      ],
    );
  }
}
