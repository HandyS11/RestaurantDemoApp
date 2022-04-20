import 'package:flutter/material.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/views/containers/restaurants_list.dart';
import 'package:restaurant/views/containers/row_text.dart';

// ignore: must_be_immutable
class Restaurants extends StatelessWidget {
  final List<Restaurant> restaurants;
  final Size size;
  final bool isHorizontal;

  const Restaurants(
      {Key? key,
      required this.restaurants,
      required this.size,
      required this.isHorizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: RowText(
            isCateg: false,
            restaurants: restaurants,
          ),
        ),
        const Padding(padding: EdgeInsets.all(3)),
        RestaurantList(
          restaurants: restaurants,
          size: size,
          isHorizontal: isHorizontal,
        ),
      ],
    );
  }
}
