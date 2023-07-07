import 'package:flutter/material.dart';

import '../../../Utils/consts.dart';

class DestinationScreen extends StatelessWidget {
  final String imageUrl;

  const DestinationScreen(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Consts().Bg100,
        title: const Text('Descrição'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: Image.network(imageUrl, width: 200, height: 200),
          ),
          //title

          const SizedBox(height: 20),
          const Center(
            child: Text(
              'The Shawshank Redemption',
              style: TextStyle(
                fontFamily: "HeyWow",
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          //description
          const SizedBox(height: 20),
          Center(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
                  style: TextStyle(
                      fontFamily: "HeyWow",
                      fontSize: 16,
                      color: Consts().Text100),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          //status
          Text(
            'released',
            style: TextStyle(
                fontFamily: "HeyWow",
                fontSize: 16,
                color: Consts().Accent100,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
