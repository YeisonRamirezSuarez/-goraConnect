import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String title;
  final String subtitle;

  const Labels({super.key, required this.ruta, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.title,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
            child: Text(
              this.subtitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class TerminosCondiciones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text('Términos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200));
  }
}

