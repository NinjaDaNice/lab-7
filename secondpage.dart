import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{


  String name, phone, email;


  WelcomePage({required this.name,required this.phone,required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${name}'),
            Text('Email: ${email}'),
            Text('Phone: ${phone}'),
          ],
        ),
      )
    );
  }
}