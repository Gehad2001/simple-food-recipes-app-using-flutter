import 'package:flutter/material.dart';
import 'package:flutterapp/scr/fatera.dart';


class Pastries extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent.shade200,
            title: Text('معجنات'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'بيتزا',
                ),
                Tab(
                  text: 'سينابون',
                ),
                Tab(
                  text: 'كرواسون',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              B1(),
              B2(),
              B3(),
            ],
          ),

        ));
  }
}

