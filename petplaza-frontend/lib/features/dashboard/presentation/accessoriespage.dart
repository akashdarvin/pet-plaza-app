import 'package:flutter/material.dart';

class Accessoriespage extends StatelessWidget {
  const Accessoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accessories",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
      ),
    );
  }
}