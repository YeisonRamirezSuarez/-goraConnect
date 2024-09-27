import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final String title;

  const Logo({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image(image: AssetImage('assets/logo.png')),
            Text(this.title, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)
          ],
        ),

      ),
    );
  }
}