import 'package:flutter/material.dart';
import 'package:restaurant/views/home_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> items = [HomeView(), HomeView(), HomeView(), HomeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  iconTapped(0);
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.video_camera_front),
                onPressed: () {
                  iconTapped(1);
                }),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.add_alert),
                onPressed: () {
                  iconTapped(2);
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.account_box),
                onPressed: () {
                  iconTapped(3);
                }),
            const Spacer(),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  iconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
