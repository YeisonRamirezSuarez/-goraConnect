import 'package:flutter/material.dart';

class BotonNegro extends StatelessWidget {
  
  final String text;
  final Function onPressed;

  const BotonNegro({
    super.key, 
    required this.text, 
    required this.onPressed}
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        this.onPressed();
      },
      style: ElevatedButton.styleFrom(
          elevation: 2, backgroundColor: Colors.black, shape: StadiumBorder()),
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white, 
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
