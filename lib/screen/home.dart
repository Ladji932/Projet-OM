import 'package:flutter/material.dart';
import 'package:test_2/styles.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(
          10), // On définit le padding un peu comme du CSS. Ici c'est un padding de 10 pour tous les côtés. On peut aussi faire EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10) pour définir un padding différent pour chaque côté.
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bientôt le\nprintemps !\n🌸🌼🌺',
                style: textTitre,
              ),
              ElevatedButton(
                onPressed: _launchUrl,
                child: const Text('Linkedin'),
              ),
              rowMaker(Icons.person, "Moi (c'est Copilot qui l'a proposé)"),
              rowMaker(Icons.house, "Ma maison"),
              rowMaker(Icons.mail, "Mail"),
              rowMaker(Icons.credit_card, "1234 5678 9012 3456 / 421"),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Super !',
                style: textTitre,
              ),
            ],
          ),
          const Row(
            children: [
              Text("Super !"),
              Text("Super !"),
              Column(
                children: [
                  Text("Super !"),
                  Text("Super !"),
                ],
              ),
            ],
          ),
          Image.network('https://img.att.ovh/flutter/logo.png'),
          Image.asset('mathieu_fight.gif'),
          const CircleAvatar(
            backgroundImage: AssetImage('mathieu_select.gif'),
            maxRadius: 50,
            backgroundColor: Colors.green,
          )
        ],
      ),
    );
  }

  Row rowMaker(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }

  Future<void> _launchUrl() async {
    if (await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
