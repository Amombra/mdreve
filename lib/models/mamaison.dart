class Maison {
  int id;
  String nomProprietaire;
  String image;
  String localisation;
  String nombrePiece;
  String typeMaison;
  String prix;
  String numero;

  Maison(
      {this.id,
      this.nomProprietaire,
      this.image,
      this.localisation,
      this.nombrePiece,
      this.typeMaison,
      this.prix,
      this.numero});

  Maison.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomProprietaire = json['nom_proprietaire'];
    image = json['image'];
    localisation = json['localisation'];
    nombrePiece = json['nombre_piece'];
    typeMaison = json['type_maison'];
    prix = json['prix'];
    numero = json['numero'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom_proprietaire'] = this.nomProprietaire;
    data['image'] = this.image;
    data['localisation'] = this.localisation;
    data['nombre_piece'] = this.nombrePiece;
    data['type_maison'] = this.typeMaison;
    data['prix'] = this.prix;
    data['numero'] = this.numero;
    return data;
  }
}