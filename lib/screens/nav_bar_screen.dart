import 'package:ecommerceapp/screens/Cart/cart_screen.dart';
import 'package:ecommerceapp/screens/Home/home_screen.dart';
import 'package:ecommerceapp/screens/favorite.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 2;

  final List<Widget> screens = const [
    Scaffold(),
    FavoriteScreen(),
    HomeScreen(),
    CartScreen(),
    Scaffold(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onTabTapped(2), // Home button
        shape: const CircleBorder(),
        backgroundColor: Colors.deepPurple,
        child: Icon(
          Icons.home,
          color: currentIndex == 2 ? Colors.white : Colors.cyan,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => _onTabTapped(0),
              icon: Icon(
                Icons.grid_view_outlined,
                size: 30,
                color: currentIndex == 0 ? Colors.red : Colors.deepPurpleAccent,
              ),
            ),
            IconButton(
              onPressed: () => _onTabTapped(1),
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: currentIndex == 1 ? Colors.red : Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(width: 5), // Center spacing
            IconButton(
              onPressed: () => _onTabTapped(3),
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: currentIndex == 3 ? Colors.red : Colors.deepPurpleAccent,
              ),
            ),
            IconButton(
              onPressed: () => _onTabTapped(4),
              icon: Icon(
                Icons.person,
                size: 30,
                color: currentIndex == 4 ? Colors.red : Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
