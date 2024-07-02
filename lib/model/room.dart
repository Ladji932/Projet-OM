class Room {
  String? roomID;
  String? image;
  String? description;
  String? nom;
  String? tarif;

  Room({this.roomID, this.image, this.description, this.nom, this.tarif});

  Room.fromJson(Map<String, dynamic> json) {
    roomID = json['roomID'];
    image = json['image'];
    description = json['description'];
    nom = json['nom'];
    tarif = json['tarif'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roomID'] = this.roomID;
    data['image'] = this.image;
    data['description'] = this.description;
    data['nom'] = this.nom;
    data['tarif'] = this.tarif;
    return data;
  }
}
