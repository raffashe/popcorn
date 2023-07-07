import 'package:flutter/material.dart';
import 'package:pix_test_1/Utils/consts.dart';

import '../Widgets/carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 80),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hi! Raffaela",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "HeyWow",
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Bem vinda!",
                          style: TextStyle(
                            color: Consts().Primary200,
                            fontSize: 16,
                            fontFamily: "HeyWow",
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/icon.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Confira nossa lista",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: "HeyWow",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
