import 'package:flutter/material.dart';
import 'package:pet_adopt_project/view/favoritePet.dart';
import 'package:pet_adopt_project/view/formNewPet.dart';
import 'package:pet_adopt_project/view/home.dart';
import 'package:pet_adopt_project/view/intro.dart';
import 'package:pet_adopt_project/view/userPerfil.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    Home(),
    FavoritePet(),
    NewPet(),
    Userperfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.dehaze,
            size: 28,
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 5),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: 10, left: 10),
          child: Text(
            'Pet Adopt',
            style: TextStyle(
              fontSize: 26,
              color: Colors.deepPurpleAccent[100],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const IntroPage()),
              );
            },
            icon: const Icon(Icons.logout, size: 28),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Add pet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[500],
        onTap: _onItemTapped,
        unselectedItemColor: const Color.fromARGB(100, 0, 0, 0),
      ),
    );
  }
}
