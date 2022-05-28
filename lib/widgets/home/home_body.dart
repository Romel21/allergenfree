import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home', style: TextStyle(fontFamily: 'Spinnaker')),
        backgroundColor: const Color(0xFF889452),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_rounded)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF889452),
          unselectedItemColor: const Color(0xFF889452),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                activeIcon: Icon(Icons.home_rounded)),
            BottomNavigationBarItem(
                icon: Icon(Icons.description_outlined),
                label: 'Recipes',
                activeIcon: Icon(Icons.description_rounded)),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline_rounded),
                label: 'Add',
                activeIcon: Icon(Icons.add_circle_rounded)),
            BottomNavigationBarItem(
                icon: Icon(Icons.dining_outlined),
                label: 'Restaurants',
                activeIcon: Icon(Icons.dining)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined),
                label: 'Profile',
                activeIcon: Icon(Icons.person)),
          ]),
    );
  }
}
