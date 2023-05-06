import 'package:flutter/material.dart';

import '../../home/view/banner_widget.dart';
import '../../home/view/drawer_Widget.dart';
import '../../home/view/homepage_display_products_widget.dart';

class HomeSubCategoryScreen extends StatefulWidget {
  const HomeSubCategoryScreen({Key? key, required this.catName})
      : super(key: key);
  final String catName;
  @override
  State<HomeSubCategoryScreen> createState() => _HomeSubCategoryScreenState();
}

class _HomeSubCategoryScreenState extends State<HomeSubCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.catName} Watches"), elevation: 10),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomepageDisplayProducts(
              productListName: "${widget.catName} Watches",
              categoryName: widget.catName,
            ),
          ],
        ),
      ),
    );
  }
}
