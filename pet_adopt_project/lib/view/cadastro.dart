import 'package:flutter/material.dart';

// import 'package:pet_adopt_project/models/user_model.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Cadastro'),
        ),
      ),
      body: const SingleChildScrollView(
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
