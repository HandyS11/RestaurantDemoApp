import 'package:restaurant/model/raw_model/category.dart';
import 'package:restaurant/model/raw_model/restaurant.dart';

class Datas {
  Category italian = Category(
      name: "Italian",
      urlImage:
          "https://www.seriouseats.com/thmb/0Zni_LTj9HntsXwunlGrEiharxs=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2014__08__20140818-tomato-sauce-vicky-wasik-3-5a82a74045764203a01410754b129601.jpg");
  Category chinese = Category(
      name: "Chinese",
      urlImage:
          "https://www.greenqueen.com.hk/wp-content/uploads/2022/02/orijit-chatterjee-wEBg_pYtynw-unsplash-scaled.jpg");
  Category nigerian = Category(
      name: "Nigerian",
      urlImage:
          "https://insanelygoodrecipes.com/wp-content/uploads/2021/05/Jollof-Rice-with-Green-Onions.jpg");

  List<Restaurant> italians() {
    Category category = italian;
    return [
      Restaurant(
          name: "AAA",
          address: "aaa",
          isOpen: true,
          grade: 4.1,
          urlImage:
              "https://www.sortiraparis.com/images/80/95878/693086-photos-mohamed-cheikh-top-chef-2021-a-la-pagode-de-cos-de-la-reserve.jpg",
          category: category),
      Restaurant(
          name: "BBB",
          address: "bbb",
          isOpen: true,
          grade: 3.2,
          urlImage:
              "https://www.sortiraparis.com/images/80/95878/693086-photos-mohamed-cheikh-top-chef-2021-a-la-pagode-de-cos-de-la-reserve.jpg",
          category: category),
      Restaurant(
          name: "CCC",
          address: "ccc",
          isOpen: false,
          grade: 4.3,
          urlImage:
              "https://www.sortiraparis.com/images/80/95878/693086-photos-mohamed-cheikh-top-chef-2021-a-la-pagode-de-cos-de-la-reserve.jpg",
          category: category),
    ];
  }

  List<Restaurant> chineses() {
    Category category = chinese;
    return [
      Restaurant(
          name: "DDD",
          address: "ddd",
          isOpen: true,
          grade: 3.1,
          urlImage:
              "https://media-cdn.tripadvisor.com/media/photo-s/02/e5/73/6c/dragonaro-chinese-restaurant.jpg",
          category: category),
      Restaurant(
          name: "EEE",
          address: "eee",
          isOpen: true,
          grade: 4.7,
          urlImage:
              "https://media-cdn.tripadvisor.com/media/photo-s/02/e5/73/6c/dragonaro-chinese-restaurant.jpg",
          category: category),
      Restaurant(
          name: "FFF",
          address: "fff",
          isOpen: false,
          grade: 4.3,
          urlImage:
              "https://media-cdn.tripadvisor.com/media/photo-s/02/e5/73/6c/dragonaro-chinese-restaurant.jpg",
          category: category),
    ];
  }

  List<Restaurant> nigerians() {
    Category category = nigerian;
    return [
      Restaurant(
          name: "GGG",
          address: "ggg",
          isOpen: true,
          grade: 3.1,
          urlImage:
              "https://media-cdn.tripadvisor.com/media/photo-s/0e/27/b0/f1/this-is-the-typical-seating.jpg",
          category: category),
      Restaurant(
          name: "HHH",
          address: "hhh",
          isOpen: true,
          grade: 4.2,
          urlImage:
              "https://media-cdn.tripadvisor.com/media/photo-s/0e/27/b0/f1/this-is-the-typical-seating.jpg",
          category: category),
      Restaurant(
          name: "III",
          address: "iii",
          isOpen: false,
          grade: 3.4,
          urlImage:
              "https://media-cdn.tripadvisor.com/media/photo-s/0e/27/b0/f1/this-is-the-typical-seating.jpg",
          category: category),
    ];
  }

  List<Restaurant> allRestaurants() {
    List<Restaurant> all = [];
    all.addAll(italians());
    all.addAll(chineses());
    all.addAll(nigerians());
    return all;
  }
}
