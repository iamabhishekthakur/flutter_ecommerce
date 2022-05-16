import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/home/view/homepage.dart';
import 'package:flutter_ecommerce/modules/product_search/view/product_search.dart';

import '../../modules/cart/view/cart.dart';
import '../../modules/more/view/more.dart';
import '../../modules/profile/view/profile.dart';

class NavigationHomeView extends StatefulWidget {
  @override
  _NavigationHomeViewState createState() => _NavigationHomeViewState();
}

class _NavigationHomeViewState extends State<NavigationHomeView> {
  int currentIndex = 0;

  List pages = [
    Homepage(),
    PageSearch(),
    Cart(),
    Profile(),
    More(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFFF6969),
        unselectedItemColor: Color(0xFF727C8E),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: currentIndex,
        onTap: (e) {
          setState(() {
            currentIndex = e;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "More",
          ),
        ],
      ),
    );
  }
}
