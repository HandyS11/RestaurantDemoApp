import 'package:restaurant/model/raw_model/category.dart';

class Restaurant {
  String name;
  String address;
  bool isOpen;
  double grade;
  String urlImage;
  Category category;

  Restaurant(
      {required this.name,
      required this.address,
      required this.isOpen,
      required this.grade,
      required this.urlImage,
      required this.category});
}
