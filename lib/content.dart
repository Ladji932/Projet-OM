import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Olympique de Marseille"),
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(players[index]['name']),
            subtitle: Text(players[index]['position']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlayerDetailScreen(player: players[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class PlayerDetailScreen extends StatelessWidget {
  final Map<String, String> player;

  const PlayerDetailScreen({super.key, required this.player});

  @override
 
