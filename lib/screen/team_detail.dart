import 'package:flutter/material.dart';
import '../model/team.dart';

class TeamDetailScreen extends StatelessWidget {
  final Team team;

  const TeamDetailScreen({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(team.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                team.crestUrl,
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Nom: ${team.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Acronyme: ${team.shortName}'),
            const SizedBox(height: 8),
            Text('TLA: ${team.tla}'),
            const SizedBox(height: 8),
            Text('Adresse: ${team.address}'),
            const SizedBox(height: 8),
            Text('Téléphone: ${team.phone}'),
            const SizedBox(height: 8),
            Text('Site web: ${team.website}'),
            const SizedBox(height: 8),
            Text('Email: ${team.email}'),
            const SizedBox(height: 8),
            Text('Fondé: ${team.founded}'),
            const SizedBox(height: 8),
            Text('Couleurs du club: ${team.clubColors}'),
            const SizedBox(height: 8),
            Text('Stade: ${team.venue}'),
            const SizedBox(height: 8),
            Text('Dernière mise à jour: ${team.lastUpdated}'),
          ],
        ),
      ),
    );
  }
}
