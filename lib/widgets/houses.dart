import 'house.dart';

class Houses {
  List<House> _items =[
    House(
      id: 1,
      address: '335 bp Abj 11',
      local: 'Cocody Angré Djiby...',
      image: 'villa.jpg',
      price: 1500000.0,
    ),
    House(
      id: 2,
      address: '335 bp Abj 11',
      local: 'Cocody Angré Djiby...',
      image: 'villa.jpg',
      price: 1500000.0,
    ),

  ];
  List<House> get items {
    return [..._items];
  }
}