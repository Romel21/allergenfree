import 'package:flutter/material.dart';

class RestaurantsBody extends StatefulWidget {
  const RestaurantsBody({Key? key}) : super(key: key);

  @override
  State<RestaurantsBody> createState() => _RestaurantsBodyState();
}

class _RestaurantsBodyState extends State<RestaurantsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Restaurants',
            style: TextStyle(fontFamily: 'Spinnaker')),
        backgroundColor: const Color(0xFF889452),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_rounded)),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: 3,
      //     selectedFontSize: 0,
      //     unselectedFontSize: 0,
      //     backgroundColor: Colors.white,
      //     selectedItemColor: const Color(0xFF889452),
      //     unselectedItemColor: const Color(0xFF889452),
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home_outlined),
      //           label: 'Home',
      //           activeIcon: Icon(Icons.home_rounded)),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.description_outlined),
      //           label: 'Recipes',
      //           activeIcon: Icon(Icons.description_rounded)),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.add_circle_outline_rounded),
      //           label: 'Add',
      //           activeIcon: Icon(Icons.add_circle_rounded)),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.dining_outlined),
      //           label: 'Restaurants',
      //           activeIcon: Icon(Icons.dining)),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.person_outline_outlined),
      //           label: 'Profile',
      //           activeIcon: Icon(Icons.person)),
      //     ]),
    );
  }
}
