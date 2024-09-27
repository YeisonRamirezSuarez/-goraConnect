import 'package:chat_app/src/widgets/boton_negro.dart';
import 'package:chat_app/src/widgets/custom_input.dart';
import 'package:chat_app/src/widgets/laberls.dart';
import 'package:chat_app/src/widgets/logo.dart';
import 'package:flutter/material.dart';

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
                children: [
                  Logo(title: 'Login',),
                  _Form(),
                  Labels(
                    title: '¿No tienes una cuenta?',
                    subtitle: 'Crea una ahora!',
                    ruta: 'register',),
                  TerminosCondiciones(),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(children: [
        CustomInput(
          icon: Icons.mail_outline,
          placeholder: 'Correo',
          keyboardType: TextInputType.emailAddress,
          textController: emailCtrl,
        ),
        CustomInput(
          icon: Icons.lock_outline,
          placeholder: 'Contraseña',
          textController: passCtrl,
          isPassword: true,
        ),
        BotonNegro(
          text: 'Ingrese',
          onPressed: () {
            print('email: ${emailCtrl.text} - password: ${passCtrl.text}');
          },
        )
      ]),
    );
  }
}
