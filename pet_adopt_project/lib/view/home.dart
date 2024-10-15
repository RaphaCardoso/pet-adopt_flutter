import 'package:flutter/material.dart';
import 'package:pet_adopt_project/widgets/petCategory.dart';
import 'package:pet_adopt_project/widgets/pets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
                          color: Color.fromARGB(255, 78, 48, 161),
                        )),
                  ),
                ),
              ],
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
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              height: 110,
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
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        petCategory(),
                        petCategory(),
                        petCategory(),
                        petCategory(),
                        petCategory(),
                        petCategory(),
                        petCategory(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 370,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Adopt Pet',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(150, 124, 77, 255),
                        fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 100, 62, 204),
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Pets(),
                  Pets(),
                  Pets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
