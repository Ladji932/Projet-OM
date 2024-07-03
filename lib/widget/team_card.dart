import 'package:flutter/material.dart';
import '../model/team.dart';
import '../screen/team_detail.dart';

class TeamCard extends StatelessWidget {
  final Team team;

  const TeamCard({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          team.crestUrl,
          height: 40,
          width: 40,
        ),
        title: Text(team.name),
        subtitle: Text(team.shortName),
        trailing: Text(team.tla),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeamDetailScreen(team: team),
            ),
          );
        },
      ),
    );
  }
}
