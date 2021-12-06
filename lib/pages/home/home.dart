import 'package:diario/pages/home/day_limit_presentation.dart';
import 'package:diario/shared/models/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {

  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => HomeState();

}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Config(),
      child: Column(
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
      ),
    );
  }

}