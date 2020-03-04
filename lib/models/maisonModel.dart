import 'package:mdreve/models/mamaison.dart';
class Locventes {
  int id;
  String nom;
  String image;
  List<Maison> maison;

  Locventes({this.id, this.nom, this.image, this.maison});

  Locventes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
    image = json['image'];
    if (json['maison'] != null) {
      maison = new List<Maison>();
      json['maison'].forEach((v) {
        maison.add(new Maison.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    data['image'] = this.image;
    if (this.maison != null) {
      data['maison'] = this.maison.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

