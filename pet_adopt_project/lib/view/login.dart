import 'package:flutter/material.dart';
import 'package:pet_adopt_project/view/intro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.deepPurpleAccent, // Fundo transparente para a AppBar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent, // Cor de fundo do Container
              boxShadow: [
                BoxShadow(
                  color:
                      Colors.deepPurpleAccent.withOpacity(0.4), // Cor da sombra
                  spreadRadius: 2, // Espalhamento da sombra
                  blurRadius: 5, // Desfoque da sombra
                  offset: const Offset(0, 10), // Posição da sombra
                ),
              ],
            ),
            alignment: Alignment.center,
            height: 100,
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white, // Cor do texto para melhor visibilidade
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const IntroPage()),
                );
              },
              child: const Text('Get Started'),
            )
          ],
        ),
      ),
    );
  }
}
