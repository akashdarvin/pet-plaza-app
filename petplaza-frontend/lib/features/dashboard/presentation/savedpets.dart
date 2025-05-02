import 'package:flutter/material.dart';

class Savedpets extends StatelessWidget {
  const Savedpets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
      ),
    );
  }
}