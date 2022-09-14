import 'package:flutter/material.dart';
import 'package:primeiro_projeto_interface/components/botao.dart';

class Menu2 extends StatefulWidget {
  const Menu2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Menu2> createState() => _Menu2();
}

class _Menu2 extends State<Menu2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Home'),
      ),
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Botao(
                descricao: 'Cliente',
                acao: () => print('Cliente'),
              ),
              Botao(
                descricao: 'Funcionario',
                acao: () => print('Funcionario'),
              ),
              Botao(
                descricao: 'Fornecedor',
                acao: () => print('Fornecedor'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
