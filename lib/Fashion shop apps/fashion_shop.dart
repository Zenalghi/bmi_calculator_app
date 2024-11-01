import 'package:uuid/uuid.dart';

enum ShoeColors {black, white, grey, red, blue, yellow}
enum Gender {men, women}
enum Brands {nike, adidas, airwalk, converse, vans, puma}

class Shoes {
  final String id;
  final int size;
  final ShoeColors shoeColor;
  final Gender gender;
  final Brands brand;
  final String type;
  final bool limitedEdition;

  Shoes({
    required this.size,
    required this.shoeColor,
    required this.gender,
    required this.brand,
    required this.type,
    this.limitedEdition = false,
  }) : id = Uuid().v4(); 
}

void main() {
  var shoe = Shoes(
    size: 42,
    shoeColor: ShoeColors.black,
    gender: Gender.men,
    brand: Brands.nike,
    type: 'Sneakers',
    limitedEdition: true,
  );

  print('Shoe ID: ${shoe.id}');
  print('Size: ${shoe.size}');
  print('Color: ${shoe.shoeColor}');
  print('Gender: ${shoe.gender}');
  print('Brand: ${shoe.brand}');
  print('Type: ${shoe.type}');
  print('Limited Edition: ${shoe.limitedEdition}');
}
