import 'package:flutter/material.dart';
import 'next1.dart';
class page extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade200,
        title: Text('وصفات طعام',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),

      body:Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/الصورة الرئيسية.jpg',
            ),
            fit: BoxFit.cover
          )
        ) ,
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Next();
                      },
                    )
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.login_outlined),
                  Text('التالى',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              color: Colors.orangeAccent.shade200,
              minWidth: 200,
            ),

          ],
        )
      )
    );
  }

}