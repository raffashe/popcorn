import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pix_test_1/View/Pages/Home/avaliacao.dart';
import 'package:pix_test_1/View/Pages/Home/favorito.dart';
import 'package:pix_test_1/View/Pages/Home/home.dart';

import '../../../Utils/consts.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthDisp = MediaQuery.of(context).size.width;
    final double heightDisp = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: widthDisp * 0.72,
        height: heightDisp,
        decoration: BoxDecoration(
            color: Consts().Primary100,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  //
                  //
                  //
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()))
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 3),
                        Icon(FontAwesomeIcons.house,
                            color: Consts().Text100, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontFamily: "HeyWow",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Consts().Text100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: null,
                    height: 40,
                  ),
                  //
                  //
                  //
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FavoritoPage()))
                    },
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.heart,
                          color: Consts().Text100,
                          size: 24,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Favorito',
                          style: TextStyle(
                            fontFamily: "HeyWow",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Consts().Text100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: null,
                    height: 40,
                  ),
                  //
                  //
                  //
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ThumbPage()))
                    },
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.thumbsUp,
                          color: Consts().Text100,
                          size: 24,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Avaliação',
                          style: TextStyle(
                            fontFamily: "HeyWow",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Consts().Text100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
