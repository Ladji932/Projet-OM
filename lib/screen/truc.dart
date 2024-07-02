import 'package:flutter/material.dart';
import 'package:test_2/widget/imagestack.dart';

class TrucScreen extends StatelessWidget {
  const TrucScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageStack(
            imageName: 'feuille.jpg',
            text: 'Ceci est une feuille avec d\'autres feuilles derrière.',
          ),
          ImageStack(
            imageName: 'mathieu_victory.gif',
            text: 'Il a gagné.',
          ),
        ],
      ),
    );
  }
}
