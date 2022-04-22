import 'package:chat_app/widget/boton_azul.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/widget/custom_input.dart';
import 'package:chat_app/widget/labels.dart';
import 'package:chat_app/widget/logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Logo(
                    titulo: 'Messenger',
                  ),
                  _Form(),
                  const Labels(
                    ruta: 'register',
                    titulo: 'Cree una ahora!',
                    subtitulo: 'No tienes cuesta?',
                  ),
                  const Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.email_outlined,
            placeHolder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.looks_outlined,
            placeHolder: 'Contraseña',
            isPassword: true,
            textController: passCtrl,
          ),
          BotonAzul(
              text: 'Ingrese',
              onPressed: () {
                print(emailCtrl.text + passCtrl.text);
              })
        ],
      ),
    );
  }
}
