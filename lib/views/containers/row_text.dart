import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/controller/page_detail.dart';
import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';

class RowText extends StatelessWidget {
  final bool isCateg;
  final List<Restaurant>? restaurants;
  final List<Category>? categories;

  const RowText(
      {Key? key, required this.isCateg, this.restaurants, this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          (isCateg) ? "Category" : "Trending Restaurants",
          style: GoogleFonts.signika(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        (isCateg)
            ? TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PageDetail(
                        pageName: "Category", categories: categories!);
                  }));
                },
                child: Text(
                  "See all (${categories!.length})",
                  style: const TextStyle(color: Colors.blue),
                ))
            : TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PageDetail(
                        restaurants: restaurants!,
                        pageName: "Trendings Restaurants");
                  }));
                },
                child: Text(
                  "See all (${restaurants!.length})",
                  style: const TextStyle(color: Colors.blue),
                ))
      ],
    );
  }
}
