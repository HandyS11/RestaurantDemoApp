import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';
import 'package:restaurant/model/services/datas.dart';

class DatasHandler {
  final datas = Datas();

  List<Category> allCategories() {
    List<Category> categories = [];
    final all = datas.allRestaurants();
    for (var restaurant in all) {
      if (!categories.contains(restaurant.category)) {
        categories.add(restaurant.category);
      }
    }
    return categories;
  }

  List<Restaurant> allRestaurantsFromCategory(Category category) {
    List<Restaurant> restaurants = [];
    final all = datas.allRestaurants();
    for (var restaurant in all) {
      if (restaurant.category.name == category.name) {
        restaurants.add(restaurant);
      }
    }
    return restaurants;
  }

  List<Restaurant> allTrendingRestaurants() {
    List<Restaurant> trending = [];
    final all = datas.allRestaurants();
    for (var restaurant in all) {
      if (restaurant.grade >= 4.0) {
        // J'avais pas de meilleure idée
        trending.add(restaurant);
      }
    }
    return trending;
  }
}
