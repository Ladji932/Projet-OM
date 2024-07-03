import 'package:flutter/material.dart';
import '../model/TeamForApiFootball.dart'; // Ajuste le chemin correctement

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemple d\'application Flutter avec API-Football',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Équipe de l\'OM'),
        ),
        body: Center(
          child: FutureBuilder<TeamForApiFootball>(
            future: FootballApi.fetchOMData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Erreur: ${snapshot.error}');
              } else {
                final team = snapshot.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Nom de l\'équipe: ${team.name}'),
                    Text('Pays: ${team.country}'),
                    // Ajoute d'autres champs ici selon le modèle TeamForApiFootball
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
