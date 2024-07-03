class Team {
  final int id;
  final String name;
  final String shortName;
  final String tla;
  final String crestUrl;
  final String address;
  final String phone;
  final String website;
  final String email;
  final int founded;
  final String clubColors;
  final String venue;
  final String lastUpdated;

  Team({
    required this.id,
    required this.name,
    required this.shortName,
    required this.tla,
    required this.crestUrl,
    required this.address,
    required this.phone,
    required this.website,
    required this.email,
    required this.founded,
    required this.clubColors,
    required this.venue,
    required this.lastUpdated,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      shortName: json['shortName'],
      tla: json['tla'],
      crestUrl: json['crestUrl'],
      address: json['address'],
      phone: json['phone'],
      website: json['website'],
      email: json['email'],
      founded: json['founded'],
      clubColors: json['clubColors'],
      venue: json['venue'],
      lastUpdated: json['lastUpdated'],
    );
  }
}
