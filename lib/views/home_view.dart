import 'package:flutter/cupertino.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/model/services/datas_handler.dart';
import 'package:restaurant/views/containers/categories.dart';
import 'package:restaurant/views/containers/search_bar.dart';
import 'package:restaurant/views/containers/restaurants.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Restaurant> trendings = DatasHandler().allTrendingRestaurants();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size newSize = Size(size.width, size.height / 2.3);
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 35)),
                const SearchBar(),
                const Padding(padding: EdgeInsets.only(top: 30)),
                Restaurants(
                  restaurants: trendings,
                  size: newSize,
                  isHorizontal: true,
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Categories(),
              ],
            ))
      ]),
    );
  }
}
