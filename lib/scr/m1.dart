import 'package:flutter/material.dart';
import 'package:flutterapp/scr/mainplates.dart';
class pasta extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent.shade200,
            title: Text('اطباق رئيسية',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'مكرونة بشاميل',
                ),
                Tab(
                  text: 'كفتة',
                ),
                Tab(
                  text: 'ملوخية بالارانب',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              P1(),
              P2(),
              P3(),
            ],
          ),

        ));
  }
}

