import 'package:flutter/material.dart';
import 'package:phonebook/ui/pages/favorites/favorites.dart';
import 'package:phonebook/ui/pages/home/home.dart';
import 'package:phonebook/ui/pages/recent/recent.dart';

class ButtomNavi extends StatefulWidget {
  const ButtomNavi({Key? key}) : super(key: key);
  @override
  State<ButtomNavi> createState() => _ButtomNaviState();
}

class _ButtomNaviState extends State<ButtomNavi> {
  int currentIndex = 0;

  final List<Widget> body = [
    const Recent(),
    const Home(),
    const Favorites(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffC4C4C4),
        onTap: onTap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.timer_outlined,
                size: 30,
                color: Color(0xff000000),
              ),
            ),
            label: '',
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.timer_rounded,
                size: 30,
                color: Color(0xff000000),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.person_outline,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
            label: '',
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.person,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.star_outline,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
            label: '',
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.star,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
