import 'package:flutter/material.dart';
import 'package:pix_test_1/Utils/consts.dart';

class FavoritoPage extends StatefulWidget {
  const FavoritoPage({super.key});

  @override
  State<FavoritoPage> createState() => _FavoritoPageState();
}

class _FavoritoPageState extends State<FavoritoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos",
            style: TextStyle(
                fontFamily: "HeyWow", fontSize: 20, color: Consts().Text100)),
        backgroundColor: Consts().Bg100,
      ),
      backgroundColor: Consts().Bg100,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Text("Favoritos",
                style: TextStyle(
                    color: Consts().Text100,
                    fontFamily: "HeyWow",
                    fontSize: 20,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
