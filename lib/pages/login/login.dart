import 'package:diario/shared/models/session.dart';
import 'package:diario/styles/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Session>(
      builder: (context, session, child) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image(
                        height: 200,
                        image: AssetImage('assets/images/512x512.png'),
                      ),
                      Text(
                        'Bem vindo ao Diario',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      )
                    ],
                  )
                ),
                Center(
                  child: MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white
                      ),
                    ),
                    onPressed: () => session.singIn(),
                  ),
                ),
              ],
            ),
          )
        );
      },
    );
  }
}