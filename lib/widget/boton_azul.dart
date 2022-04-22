import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BotonAzul({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.blue, elevation: 2, shape: StadiumBorder()),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        child: Center(
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }
}
