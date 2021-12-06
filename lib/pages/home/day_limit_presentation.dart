import 'package:diario/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DayLimitPresentation extends StatelessWidget {

  final double limit;
  final List<double> spent;

  const DayLimitPresentation({
    required this.limit,
    required this.spent,
    Key? key,
  }) : super(key: key);

  borderStyle(context) => BorderSide(
    color: Theme.of(context).primaryColor,
    width: 5
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      height: 220,
      width: 220,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(.25),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 4),
          )
        ],
        border: Border(
            left: borderStyle(context),
            top: borderStyle(context),
            right: borderStyle(context),
            bottom: borderStyle(context),
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Limite diário',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold
            )
          ),
          Text(
            'R\$ ' + limit.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            )
          ),
          Column(
            children: [
              Text(
                  'R\$ ' + (spent[0] * -1).toString(),
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).errorColor,
                      fontWeight: FontWeight.bold
                  )
              ),
            ],
          )

        ],
      ),
    );
  }

}