import 'package:flutter/material.dart';

import '../../home/view/banner_widget.dart';
import '../../home/view/drawer_Widget.dart';
import '../../home/view/homepage_display_products_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category"), elevation: 10),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomepageDisplayProducts(
              productListName: "Ladies Watches",
              categoryName: "Ladies",
            ),
            HomepageDisplayProducts(
              productListName: "Smart Watches",
              categoryName: "smart",
            ),
            HomepageDisplayProducts(
              productListName: "Boys Watches",
              categoryName: "Gents",
            ),
            HomepageDisplayProducts(
              productListName: "Couple Watches",
              categoryName: "Couple",
            ),
            HomepageDisplayProducts(
              productListName: "Child Watches",
              categoryName: "Child",
            ),
          ],
        ),
      ),
    );
  }
}
