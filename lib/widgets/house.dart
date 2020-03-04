import 'package:flutter/foundation.dart';

class House {
  final int id;
  final String address;
  final String local;
  final String image;
  final double price;
  bool isFavorite;

  House({
    @required this.id,
    @required this.address,
    @required this.local,
    @required this.image,
    @required this.price,
    this.isFavorite = false,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    //notifyListeners();
  }
}
