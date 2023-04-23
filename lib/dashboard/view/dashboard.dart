import 'package:flutter/material.dart';
import 'package:titan_saga/Category/view/Category_screen.dart';
import 'package:titan_saga/dashboard/controller/dashboard_controller.dart';
import 'package:titan_saga/home/view/home_screen.dart';
import 'package:titan_saga/setting/view/setting_screen.dart';
import '../../cart/view/cart_screen.dart';
import '../../utils/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    SettingsScreen(),
    CategoryScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_home_work_rounded),
            label: 'Home',
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_rounded),
            label: 'Cart',
            backgroundColor: Colors.yellowAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_sharp),
            label: 'Setting',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
            backgroundColor: Colors.tealAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: (Colors.red),
        unselectedItemColor: (Colors.black87),
        onTap: _onItemTapped,
      ),
    );
  }
}
