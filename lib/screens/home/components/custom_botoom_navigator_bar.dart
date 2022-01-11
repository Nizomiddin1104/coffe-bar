import 'package:coffe/constants/constants.dart';
import 'package:coffe/constants/custom_icons_icons.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class CustomBottonNavigationBar extends StatefulWidget {
  const CustomBottonNavigationBar({Key key}) : super(key: key);

  @override
  _CustomBottonNavigationBarState createState() => _CustomBottonNavigationBarState();
}

class _CustomBottonNavigationBarState extends State<CustomBottonNavigationBar> {
  int bottomNavigationBaritemIndex =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: black.withOpacity(0.5),
        borderRadius: BorderRadius.
        vertical(top: Radius.circular(30.0),)
      ),
      padding: EdgeInsets.only(left: appPadding,right: appPadding,bottom: appPadding,top: appPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBar(
           onPressed: (){
             setState(() {
             bottomNavigationBaritemIndex =1;
             });
           },
            bottomIcons: bottomNavigationBaritemIndex==0?true:false,
            icons: CustomIcons.wine_menu,
            text: "Menu",
          ),
          BottomBar(
            onPressed: (){
              setState(() {
                bottomNavigationBaritemIndex =2;
              });
            },
            bottomIcons: bottomNavigationBaritemIndex==2?true:false,
            icons: CustomIcons.home,
            text: "Search",
          ),
        ],
      ),
    );
  }
}

