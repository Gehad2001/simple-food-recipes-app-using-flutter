import 'package:flutter/material.dart';
import 'package:flutterapp/scr/m1.dart';
import 'package:flutterapp/scr/page1.dart';
import 'package:flutterapp/scr/pastries.dart';
import 'package:flutterapp/scr/sweets.dart';

import 'favourite.dart';
class Nav extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Drawer(
     child: ListView(
       children: [
         UserAccountsDrawerHeader(accountName:Text('food'), accountEmail:Text('food@.com'),
           currentAccountPicture: CircleAvatar(
             child: ClipOval(
               child:Image.asset('assets/image/p1.jpj.jpg',
                 width: 90,
                 height: 90,
                 fit: BoxFit.cover,
               ),
             ),
           ),
           decoration: BoxDecoration(
             image: DecorationImage(
               image:AssetImage('assets/image/الصورة الرئيسية.jpg'),
             )
           ),
         ),
         ListTile(
           leading: Icon(Icons.favorite),
           title: Text(
             'المفضلة'
           ),
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) {
                   return Fav();
                 },
               ),
             );
           },
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.fastfood),
           title: Text(
               'اطباق رئيسية'
           ),
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) {
                   return pasta();
                 },
               ),
             );
           },
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.fastfood_rounded),
           title: Text(
               'معجنات'
           ),
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) {
                   return Pastries();
                 },
               ),
             );
           },
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.cookie),
           title: Text(
               'حلويات'
           ),
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) {
                   return Sweets();
                 },
               ),
             );
           },
         ),
         Divider(),
         ListTile(
           leading: Icon(Icons.exit_to_app),
           title: Text(
               'خروج'
           ),
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) {
                   return page();
                 },
               ),
             );
           },
         ),

       ],
     ),
   );
  }

}