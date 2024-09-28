import 'package:flutter/material.dart';

class BotonNegro extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const BotonNegro(
      {super.key, required this.text, this.onPressed}); // onPressed es opcional

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Puede ser null
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: onPressed != null
            ? const Color.fromARGB(255, 186, 10, 10)
            : Colors.grey, // Cambia el color según el estado
        shape: StadiumBorder(),
      ),
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
