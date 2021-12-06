import 'package:diario/pages/home/home.dart';
import 'package:diario/pages/login/login.dart';
import 'package:diario/shared/models/session.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shell extends StatelessWidget {

  tab(String label) {
    return SizedBox(
      height: 60,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15
          ),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Session>(
      builder: (context, session, child) {
        if (session.loggedIn && child != null) {
          return child;
        } else {
          return Login();
        }
      },
      child: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            elevation: 5,
            color: Theme.of(context).primaryColor,
            child: TabBar(
              tabs: [
                tab('Home'),
                tab('Extrato'),
                tab('Dashboard'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Home(title: 'Home'),
              Home(title: 'Extrato'),
              Home(title: 'Dashboard'),
            ],
          ),
        )
      ),
    );
  }

}