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
                        color: const Color.fromARGB(100, 124, 77, 255),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(100, 124, 77, 255),
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
              height: 150,
              width: 370,
              decoration: const BoxDecoration(
                color: Color.fromARGB(100, 124, 77, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        padding:
                            const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Join our animal lovers community',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              padding: const EdgeInsets.all(0.5),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Join now',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        width: 170,
                        child: Image.asset(
                          'assets/images/donoPet.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.only(left: 5, right: 5),
              height: 120,
              width: 370,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Pet Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(150, 124, 77, 255),
                            fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'more category',
                          style: TextStyle(
                            color: Color.fromARGB(255, 100, 62, 204),
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color.fromARGB(95, 77, 98, 255),
                        ),
                        width: 100,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              clipBehavior: Clip.antiAlias,
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                'assets/images/gatinho.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'Cat',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
