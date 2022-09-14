import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Home'),
      ),
      backgroundColor: Colors.black12,
      body: centralizar(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            criarBotao(descricao: 'Cliente', acao: cliqueCliente),
            criarBotao(descricao: 'Funcionário', acao: cliqueFuncionario),
            criarBotao(descricao: 'Fornecedor', acao: cliqueFornecedor),
          ],
        ),
      ),
    );
  }

  void cliqueCliente() {
    print('Codigo do cliente');
  }

  void cliqueFuncionario() {
    print('Codigo do funcionario');
  }

  void cliqueFornecedor() {
    print('Codigo do fornecedor');
  }

  Widget centralizar(Widget widget) {
    return Padding(
        padding: const EdgeInsets.all(20), child: Center(child: widget));
  }

  Widget criarBotao({required String descricao, required Function acao}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          shape: const StadiumBorder(),
        ),
        label: Text(descricao),
        icon: const Icon(Icons.person),
        onPressed: () {
          acao();
        },
      ),
    );
  }
}
