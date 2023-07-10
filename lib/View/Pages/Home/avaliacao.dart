import 'package:flutter/material.dart';
import 'package:pix_test_1/Utils/consts.dart';

class ThumbPage extends StatefulWidget {
  const ThumbPage({super.key});

  @override
  State<ThumbPage> createState() => _ThumbPageState();
}

class _ThumbPageState extends State<ThumbPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avaliação",
          style: TextStyle(
              fontFamily: "HeyWow", fontSize: 20, color: Consts().Text100),
        ),
        backgroundColor: Consts().Bg100,
      ),
      backgroundColor: Consts().Bg100,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Text("Avaliação",
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
