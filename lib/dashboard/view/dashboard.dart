import 'package:flutter/material.dart';
import 'package:titan_saga/dashboard/controller/dashboard_controller.dart';
import 'package:titan_saga/home/view/home_screen.dart';
import 'package:titan_saga/setting/view/setting_screen.dart';
import '../../cart/view/cart_screen.dart';

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
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_rounded),
            label: 'Cart',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_sharp),
            label: 'Setting',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: ThemeColors.primaryColor,
        // unselectedItemColor: ThemeColors.unselectedIconColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
