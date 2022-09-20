import 'package:flutter/material.dart';
import 'package:flutterapp/scr/cake.dart';
class Sweets extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent.shade200,
            title: Text('حلويات'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'كيكة بالشكولاتة',
                ),
                Tab(
                  text: 'بسبوسة',
                ),
                Tab(
                  text: 'سويسرول',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              S1(),
              S2(),
              S3(),
            ],
          ),

        ));
  }
}

