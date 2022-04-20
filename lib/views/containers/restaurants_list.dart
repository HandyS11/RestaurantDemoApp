import 'package:flutter/material.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/views/cells/restaurant_cell.dart';

class RestaurantList extends StatelessWidget {
  final List<Restaurant> restaurants;
  final Size size;
  final bool isHorizontal;

  const RestaurantList(
      {Key? key,
      required this.restaurants,
      required this.size,
      required this.isHorizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      height: (isHorizontal) ? size.height : size.height - 158,
      child: ListView.builder(
          itemCount: restaurants.length,
          scrollDirection: (isHorizontal) ? Axis.horizontal : Axis.vertical,
          itemBuilder: ((context, index) => RestaurantCell(
              restaurant: restaurants[index], size: size * 0.8))),
    ));
  }
}
