import 'package:flutter/material.dart';
import 'package:pet_adopt_project/view/cadastro.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _introPageState();
}

// ignore: camel_case_types
class _introPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(
            left: 110,
          ),
          padding: const EdgeInsets.only(bottom: 10),
          child: const Text(
            'Pet Adopt',
            style: TextStyle(
              fontSize: 32,
              color: Color.fromARGB(255, 103, 86, 139),
            ),
          ),
        ),
        actions: <Widget>[
          ElevatedButton( onPressed: () {}, child: const Text('Login'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(140),
                        topRight: Radius.circular(140),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    clipBehavior: Clip
                        .antiAlias, // Necessário para o Container recortar a imagem
                    child: Image.asset(
                      'assets/images/pet-1.jpg', // Substitua pelo caminho da sua imagem
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        'Find your new friends',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.80,
                          fontFamily: 'Poppins',
                          color: Color.fromARGB(255, 78, 65, 105),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 20),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Make your life more happy with us to have a little new friends',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 66, 55, 89),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Register()),
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
