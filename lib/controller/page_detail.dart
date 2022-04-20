import 'package:flutter/material.dart';
import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/views/detail_view.dart';

class PageDetail extends StatelessWidget {
  final String pageName;
  final List<Restaurant>? restaurants;
  final List<Category>? categories;

  const PageDetail(
      {Key? key, required this.pageName, this.restaurants, this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DetailView(
      pageName: pageName,
      size: size,
      restaurants: restaurants,
      categories: categories,
    );
  }
}
