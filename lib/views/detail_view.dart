import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/views/containers/restaurants_list.dart';
import 'package:restaurant/views/containers/search_bar.dart';

class DetailView extends StatelessWidget {
  final String pageName;
  final List<Restaurant>? restaurants;
  final List<Category>? categories;
  final Size size;

  const DetailView(
      {Key? key,
      required this.pageName,
      this.restaurants,
      this.categories,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text(
            pageName,
            style:
                GoogleFonts.signika(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )),
      ),
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 5)),
              const SearchBar(),
              const Padding(padding: EdgeInsets.only(top: 15)),
              (restaurants != null)
                  ? RestaurantList(
                      restaurants: restaurants!,
                      size: size,
                      isHorizontal: false,
                    )
                  : const Spacer() //CategoryList() ... le même délire
            ],
          )),
    );
  }
}
