import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String titulo;
  final String subtitulo;

  const Labels(
      {Key? key,
      required this.ruta,
      required this.titulo,
      required this.subtitulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(subtitulo,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
          const SizedBox(height: 10),
          GestureDetector(
            child: Text(titulo,
                style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.pushReplacementNamed(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
