import 'package:flutter/material.dart';
import 'package:pet_adopt_project/view/home.dart';

class NewPet extends StatefulWidget {
  const NewPet({super.key});

  @override
  State<NewPet> createState() => _NewPetState();
}

class _NewPetState extends State<NewPet> {
  int? _selectedGenderIndex;
  String? gender;

  void _onGenderChanged(int index) {
    setState(() {
      if (_selectedGenderIndex == index) {
        _selectedGenderIndex = null;
      } else {
        _selectedGenderIndex = index;
        gender = index == 0 ? 'masculino' : 'feminino';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 40, left: 40),
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(50, 124, 77, 255),
              child: Column(
                children: [
                  const Text(
                    'New Pet Form',
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Pet name',
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Breed',
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Color',
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Weight',
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Price',
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Age',
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Gender:'),
                                  CheckboxExample(
                                    label: 'Male',
                                    index: 0,
                                    isSelected: _selectedGenderIndex == 0,
                                    onChanged: _onGenderChanged,
                                  ),
                                  CheckboxExample(
                                    label: 'Female',
                                    index: 1,
                                    isSelected: _selectedGenderIndex == 1,
                                    onChanged: _onGenderChanged,
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => const Home()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 15),
                                  backgroundColor:
                                      const Color.fromARGB(150, 124, 77, 255),
                                ),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

class CheckboxExample extends StatelessWidget {
  final String label;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onChanged;

  const CheckboxExample({
    super.key,
    required this.label,
    required this.index,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isSelected,
          onChanged: (bool? value) {
            if (value == true || (value == false && isSelected)) {
              onChanged(index);
            }
          },
        ),
        Text(label),
      ],
    );
  }
}
