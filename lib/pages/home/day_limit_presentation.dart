import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diario/shared/mappers/config_mapper.dart';
import 'package:diario/shared/models/config.dart';
import 'package:diario/shared/repositories/repository.dart';
import 'package:diario/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DayLimitPresentation extends StatelessWidget {

  final Repository repository = Repository('config', ConfigMapper());

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
      child: StreamBuilder<QuerySnapshot>(
        stream: repository.all(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {

          bool waiting = snapshot.connectionState == ConnectionState.waiting;
          dynamic config;
          if (!waiting && snapshot.hasData) {
            print('foi');
            config = snapshot.data!.docs.first.data();
          }

          return Column(
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
                'R\$ ' + (waiting ? '' : 100.toString()),
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                )
              ),
              Column(
                children: [
                  Text(
                    'R\$ ' + ((waiting ? 0 : 20) * -1).toString(),
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).errorColor,
                        fontWeight: FontWeight.bold
                    )
                  ),
                ],
              )
            ],
          );
        }
      )
    );
  }

}