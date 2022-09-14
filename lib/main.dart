import 'package:flutter/material.dart';
import 'package:primeiro_projeto_interface/menu2.dart';
import 'package:primeiro_projeto_interface/menu_com_campos.dart';

import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MenuCampos(),
        '/menu': (context) => Menu(title: 'Menu')
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: const StadiumBorder(),
                    ),
                    label: const Text('Cliente'),
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      print('codigo para o cliente');
                    },
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: const StadiumBorder(),
                  ),
                  label: const Text('Funcionário'),
                  icon: const Icon(Icons.people_alt_rounded),
                  onPressed: () {
                    print('codigo para o funcionario');
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: const StadiumBorder(),
                  ),
                  label: const Text('Fornecedor'),
                  icon: const Icon(Icons.home_repair_service_rounded),
                  onPressed: () {
                    print('codigo para o fornecedor');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
