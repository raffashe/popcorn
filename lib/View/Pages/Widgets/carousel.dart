import 'package:flutter/material.dart';

import 'description.dart';

class Carousel extends StatelessWidget {
  final List<String> imageUrls = [
    'https://i.pinimg.com/1200x/d7/e4/24/d7e424f43fd6b1e995956908e3fde492.jpg',
    'https://i.pinimg.com/474x/33/27/c1/3327c167ee904ffe9ff928587a158959--tetsuya-kakihara-amnesia-shin.jpg',
    'https://img.freepik.com/fotos-premium/uma-garota-em-um-vestido-com-um-guarda-sol_327903-15355.jpg?w=2000',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // ainda não terminei esse widget, como podem ver, ta uma imagem gigante
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DestinationScreen(imageUrls[index]),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imageUrls[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
