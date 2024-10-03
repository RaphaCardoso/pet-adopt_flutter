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
        title: const Center(
          child: Text('Pet adopt'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: const Column(
                      children: [
                        Text('Image'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const Column(
                    children: [
                      Text('Find your new friends'),
                      Text(
                          'Make your life more happy with us to have a little new friends')
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Register()),
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
