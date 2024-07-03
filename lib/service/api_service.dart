import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/team.dart'; // Ajuste le chemin selon tes besoins

Future<Team> fetchTeam() async {
  final url = Uri.parse('https://cors-anywhere.herokuapp.com/https://api.football-data.org/v2/teams/516');
  final headers = {
    'X-Auth-Token': '9eedc21359bf43fdbf93da3b1e1531fb',
    'Accept': 'application/json',
  };

  final response = await http.get(url, headers: headers);

  try {
    final prettyJson = const JsonEncoder.withIndent('  ').convert(json.decode(response.body));
  } catch (e) {
    print(e);
  }

  if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);
    return Team.fromJson(data);
  } else {
    throw Exception('Échec du chargement de l\'équipe');
  }
}

