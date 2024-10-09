import 'package:flutter/material.dart';
import 'package:pet_adopt_project/view/home.dart';

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
            Container(
              margin: const EdgeInsets.only(top: 100, right: 40, left: 40),
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(50, 124, 77, 255),
              child: Column(
                children: [
                  const Text(
                    'Pet adopt',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 103, 86, 139),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20, bottom: 10),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter your username',
                          ),
                          cursorColor: Color.fromARGB(255, 255, 255, 255),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 20),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter your email',
                          ),
                          cursorColor: Color.fromARGB(255, 255, 255, 255),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                  padding: WidgetStatePropertyAll(
                                      EdgeInsets.only(
                                          left: 50,
                                          right: 50,
                                          top: 15,
                                          bottom: 15)),
                                  foregroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  backgroundColor: WidgetStatePropertyAll(
                                      Color.fromARGB(150, 124, 77, 255))),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Home()),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
