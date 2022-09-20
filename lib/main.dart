import 'package:flutter/material.dart';
import 'package:flutterapp/scr/page1.dart';
main()
{
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'Com'
    ),
    debugShowCheckedModeBanner: false,
    home: page(),
  ));
}