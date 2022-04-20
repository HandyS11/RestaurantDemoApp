// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/views/cells/category_cell.dart';
import 'package:restaurant/views/containers/row_text.dart';

import '../../model/services/datas_handler.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  List<Category> categories = DatasHandler().allCategories();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 20),
            child: RowText(
              isCateg: true,
              categories: categories,
            )),
        const Padding(padding: EdgeInsets.all(3)),
        SizedBox(
          height: size.height / 5.5,
          child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) =>
                  CategoryCell(category: categories[index], size: size))),
        ),
      ],
    );
  }
}
