import 'package:flutter/material.dart';

class MenuCampos extends StatelessWidget {
  const MenuCampos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(70),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          campoInput('Digite seu nome', Icon(Icons.person), TextInputType.text),
          campoInput('Digite seu e-mail', Icon(Icons.mail),
              TextInputType.emailAddress),
          campoInput('Digite seu e-mail', Icon(Icons.password),
              TextInputType.visiblePassword),
        ],
      )),
    ));
  }

  Widget campoInput(String texto, Icon icone, TextInputType tipo) {
    return SizedBox(
      child: TextField(
        keyboardType: tipo,
        decoration: InputDecoration(
            border: InputBorder.none, icon: icone, hintText: texto),
      ),
    );
  }
}
