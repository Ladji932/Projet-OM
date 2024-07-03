class TeamForApiFootball {
  final int id;
  final String name;
  final String country;
  final String logo; // Exemple, ajuste selon les données que tu récupères

  TeamForApiFootball({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
  });

  factory TeamForApiFootball.fromJson(Map<String, dynamic> json) {
    return TeamForApiFootball(
      id: json['id'],
      name: json['name'],
      country: json['country'],
      logo: json['logo'], // Exemple, ajuste selon les données que tu récupères
    );
  }
}
