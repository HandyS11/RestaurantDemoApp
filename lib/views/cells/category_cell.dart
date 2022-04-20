import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/controller/page_detail.dart';
import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/model/services/datas_handler.dart';

class CategoryCell extends StatelessWidget {
  final Category category;
  final Size size;

  // ignore: use_key_in_widget_constructors
  const CategoryCell({required this.category, required this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PageDetail(
                pageName: category.name,
                restaurants:
                    DatasHandler().allRestaurantsFromCategory(category));
          }));
        },
        child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              width: size.height / 5.5,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      category.urlImage,
                      height: size.height / 5.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(category.name,
                      style: GoogleFonts.signika(
                        fontSize: 22,
                        color: Colors.white,
                      )),
                ],
              ),
            )));
  }
}
