import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade200,
        title: Text('المفضلة',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/image/الصورة الرئيسية.jpg'),
              Image.asset('assets/image/اطباق رئيسية.jpg'),
              Image.asset('assets/image/بسبوسة.jpg'),
              Image.asset('assets/image/بيتزا.jpg'),
              Image.asset('assets/image/حلويات.jpg'),
              Image.asset('assets/image/سينابون.jpg'),
            ],
          ),

        ),
      ),
    );
  }
}