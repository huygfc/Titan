import 'package:flutter/material.dart';
import '../../llikedproduct/view/liked_product_screen.dart';
import '../../oders/view/order_list_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Image.asset("assets/app_icon_splash/app_icon.jpg")),
          ListTile(
            title: const Text("Orders"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const OrderListScreen(),
            )),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const LikedProductsScreen(),
            )),
            trailing: const Icon(Icons.chevron_right),
            title: const Text("Liked Products"),
          )
        ],
      ),
    );
  }
}
