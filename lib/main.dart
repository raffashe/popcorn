import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pix_test_1/Utils/consts.dart';

import 'View/Pages/Home/home.dart';
import 'View/Pages/Widgets/carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Popcorn',
        theme: ThemeData(scaffoldBackgroundColor: Consts().Bg100),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
            name: '/',
            page: () => HomePage(),
          ) //GetPage
        ]
        /*  routes: {
          "/": (context) => HomePage(),
        } */
        );
  }
}
