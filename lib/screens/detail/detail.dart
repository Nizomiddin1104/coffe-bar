import 'package:coffe/constants/constants.dart';
import 'package:coffe/models/drink.dart';
import 'package:coffe/screens/detail/components/background.dart';
import 'package:coffe/screens/detail/components/drink_detail.dart';
import 'package:coffe/screens/detail/components/qty_and_pay.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  final Drink drink;

  const DetailScreen({Key key, this.drink}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            //Background and the total order
            Background(widget.drink.imageUrl),
            DrinkDetail(widget.drink),
            QuantityAndPay(),
          ],
        ),
      ),
    );
  }
}

