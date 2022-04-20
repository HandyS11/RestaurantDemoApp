import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/views/cells/open_close_cell.dart';
import 'package:restaurant/views/cells/star_cell.dart';

class RestaurantCell extends StatelessWidget {
  final Restaurant restaurant;
  final Size size;

  const RestaurantCell({Key? key, required this.restaurant, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        // . . Nothing
      }),
      child: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 15),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
                width: size.width,
                height: size.height / 2,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        restaurant.urlImage,
                        width: size.width * 2,
                        height: size.width - 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(),
                        OpenCloseCell(isOpen: restaurant.isOpen),
                        const Padding(
                            padding: EdgeInsets.only(top: 40, left: 175)),
                        StartCell(grade: restaurant.grade),
                        const Spacer(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 240),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurant.name,
                            style: GoogleFonts.signika(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            restaurant.address,
                            style: GoogleFonts.signika(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
