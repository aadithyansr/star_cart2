import 'package:flutter/material.dart';
import 'package:star_cart2/view/screens/categ.dart';
import 'package:star_cart2/view/screens/home.dart';
import 'package:star_cart2/view/screens/profile.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';



class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  // List of widgets for each tab
  final List<Widget> _pages = [
    Center(child: Homescreen()),
     Center(child: CategPage(),),
    Center(child: Text("Search Page")),
 
    Center(child: Prof()),
  ];

  // Function to handle tab changes
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: WaterDropNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
        waterDropColor: Colors.blue, // Customize the water drop color
        barItems: [
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_outlined,
          
          ),
          BarItem(
            filledIcon: Icons.category,
            outlinedIcon: Icons.category_outlined,
          
          ),
          BarItem(
            filledIcon: Icons.shopping_cart,
            outlinedIcon: Icons.shopping_cart_outlined,
         
          ),
           BarItem(
            filledIcon: Icons.person,
            outlinedIcon: Icons.person_outline,
         
          ),
        ],
      ),
    );
  }
}
