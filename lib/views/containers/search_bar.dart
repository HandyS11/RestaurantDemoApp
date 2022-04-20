import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.search),
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(hintText: "Search.."),
              )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.menu),
              ),
            ],
          ),
        ));
  }
}
