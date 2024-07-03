import 'package:flutter/material.dart';
import '../model/team.dart';
import '../service/api_service.dart';
import '../widget/team_card.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late Future<Team> futureTeam;

  @override
  void initState() {
    super.initState();
    futureTeam = fetchTeam();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Olympique de Marseille"),
      ),
      body: FutureBuilder<Team>(
        future: futureTeam,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: TeamCard(team: snapshot.data!),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
