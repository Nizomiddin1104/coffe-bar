import 'package:coffe/constants/constants.dart';
import 'package:coffe/screens/home/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/categories.dart';
import 'components/custom_botoom_navigator_bar.dart';
import 'components/drink_products.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey_dark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBar(),
          Categories(),
          DrinkProducts(),
          CustomBottonNavigationBar()
        ],
      ),
    );
  }
}
