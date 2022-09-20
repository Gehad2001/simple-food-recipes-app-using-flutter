import 'package:flutter/material.dart';
import 'package:flutterapp/scr/m1.dart';
import 'package:flutterapp/scr/pastries.dart';
import 'package:flutterapp/scr/sweets.dart';

import 'navbar.dart';
class Next extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Nav(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade200,
        title: Text('اصناف الاكل',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
        body: Container(
        color: Colors.black26,
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
        decoration: InputDecoration(
        labelText:'search' ,
        hintText: 'search',
        prefixIcon: Icon(Icons.search),
        suffixIcon:Icon(Icons.edit),
        border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
    )
    ),
    ),
    ),
          SizedBox(
            height: 50,
          ),
          InkWell(child: CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 40,
            backgroundImage: AssetImage('assets/image/اطباق رئيسية.jpg',
            ),),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return pasta();
                    },
                  ),
                );
              }
          ),
          Text('اطباق رئيسيه',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 40,
                backgroundImage: AssetImage('assets/image/معجنات.jpg',
                ),),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Pastries();
                        },
                      ),
                    );
                  }
              ),
              Text('المعجنات',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 40,
                backgroundImage: AssetImage('assets/image/حلويات.jpg',
                ),),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Sweets();
                        },
                      ),
                    );
                  }
              ),
              Text('حلويات',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],

          )
    ],

    ),
    ),
    ),
    );
  }

}