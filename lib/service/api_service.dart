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
  }

  if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);
    return Team.fromJson(data);
  } else {
    throw Exception('Échec du chargement de l\'équipe');
  }
}

Future<Team> fetchOMData() async {
  final String apiUrl = 'https://cors-anywhere.herokuapp.com/https://api-football.com/demo/v4/teams/search/Olympique%20de%20Marseille';

  final Map<String, String> headers = {
    'x-rapidapi-host': 'api-football-v1.p.rapidapi.com',
    'x-rapidapi-key': '4d7b7126e26d46f7306b38de98594d96', 
    'Accept': 'application/json',
  };

  // Effectuer la requête GET
  final http.Response response = await http.get(Uri.parse(apiUrl), headers: headers);

  // Vérifier le statut de la réponse
  if (response.statusCode == 200) {
    // Conversion du JSON en Map
    final Map<String, dynamic> responseData = json.decode(response.body);

    // Affichage des données récupérées (pour le débogage)
    print('Response data: $responseData');

    // Retourner les données sous forme d'objet Team (à adapter selon ton modèle Team)
    return Team.fromJson(responseData['api']['teams'][0]);
  } else {
    // Affichage du statut de la réponse en cas d'erreur
    print('Request failed with status: ${response.statusCode}');
    throw Exception('Échec du chargement de l\'équipe');
  }
}