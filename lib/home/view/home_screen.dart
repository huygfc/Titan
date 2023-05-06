import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:titan_saga/auth/view/login.dart';
import 'package:titan_saga/home/view/drawer_Widget.dart';
import 'package:titan_saga/home/view/home_sub_category.dart';
import '../../search/view/search_screen.dart';
import '../../utils/colors.dart';
import '../../utils/size_constants.dart';
import 'banner_widget.dart';
import 'homepage_display_item.dart';
import 'homepage_display_products_widget.dart';
export 'package:meta/meta.dart';
export 'package:meta/meta.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<String> bannerImages = [
    "assets/images/banner_one.jpg",
    "assets/images/banner_two.jpg",
    "assets/images/banner_three.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Text(
              "Hi, ",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.grey, fontSize: 14),
            ),
            Text(
              FirebaseAuth.instance.currentUser?.displayName!.split(" ")[0] ??
                  "",
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
              icon: Icon(Icons.search))
        ],
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      drawer: customDrawer(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const BannerCrousel(bannerImages: [
              "assets/images/banner_one.jpg",
              "assets/images/banner_two.jpg",
              "assets/images/banner_three.jpg",
            ]),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              height: 80,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomeSubCategoryScreen(catName: "Gents")));
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/c1.jpg",
                          width: 40,
                          height: 50,
                        ),
                      ),
                      title: Text(
                        "Boys Watch",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomeSubCategoryScreen(catName: "Ladies")));
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/c2.jpg",
                          width: 40,
                          height: 50,
                        ),
                      ),
                      title: Text(
                        "Ladies Watch",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              height: 80,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomeSubCategoryScreen(catName: "smart")));
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/c3.jpg",
                          width: 40,
                          height: 50,
                        ),
                      ),
                      title: Text(
                        "Smart Watch",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomeSubCategoryScreen(catName: "Couple")));
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/c4.jpg",
                          width: 40,
                          height: 50,
                        ),
                      ),
                      title: Text(
                        "Couple Watch",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              height: 80,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                HomeSubCategoryScreen(catName: "Child")));
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/c5.jpg",
                          width: 40,
                          height: 50,
                        ),
                      ),
                      title: Text(
                        "Children Watch",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            HomepageDisplayProducts(productListName: "Featured Product"),
            const BannerCrousel(bannerImages: [
              "assets/images/b1.jpg",
              "assets/images/b2.jpg",
              "assets/images/b3.jpg",
              "assets/images/b4.jpg",
              "assets/images/b5.jpg",
            ]),
          ],
        ),
      ),
    );
  }
}
