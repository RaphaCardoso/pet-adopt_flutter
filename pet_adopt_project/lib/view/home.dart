import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.dehaze,
          size: 30,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.notifications_none,
              size: 35,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              size: 35,
              Icons.person_4,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 370,
                    height: 50,
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 250,
              width: 370,
              color: const Color.fromARGB(150, 124, 77, 255),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text('Join our animal lovers community'),
                          TextButton(
                              onPressed: () {}, child: const Text('Join now'))
                        ],
                      ),
                      const Column(
                        children: [Text('Image')],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 100,
              width: 370,
              color: const Color.fromARGB(150, 124, 77, 255),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Pet Categories'),
                      TextButton(
                          onPressed: () {}, child: const Text('more category'))
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.pets),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 100,
              width: 370,
              color: const Color.fromARGB(150, 124, 77, 255),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Adopt pet'),
                      TextButton(onPressed: () {}, child: const Text('see all'))
                    ],
                  ),
                  const Row(
                    children: [Text('Card')],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
