import 'package:diario/pages/home/day_limit_presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => HomeState();

}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: DayLimitPresentation(
            limit: 27.65,
            spent: [
              10.00
            ],
          )
        ),
        Center(
          child: Text('Baixo'),
        ),
      ],
    );
  }

}