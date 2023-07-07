import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pix_test_1/Utils/consts.dart';
import 'View/Affordance/affordance.dart';
import 'View/Pages/Home/home.dart';
import 'View/Pages/Widgets/carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // call to "Immersive Sticky" mode for Android only
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Popcorn',
        theme: ThemeData(scaffoldBackgroundColor: Consts().Bg100),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomePage(),
        });
  }
}
