import 'package:flutter/material.dart';

class Donatepets extends StatefulWidget {
  Donatepets({super.key});

  @override
  State<Donatepets> createState() => _DonatepetsState();
}

class _DonatepetsState extends State<Donatepets> {
  final TextEditingController petTypeController = TextEditingController();

  final TextEditingController petNameController = TextEditingController();

  final TextEditingController petAgeController = TextEditingController();

  final TextEditingController petWeightController = TextEditingController();

  final TextEditingController petBreedController = TextEditingController();

  final TextEditingController ownerNameController = TextEditingController();

  final TextEditingController OwnerContactController = TextEditingController();

  final TextEditingController OwnerAddressController = TextEditingController();

  String selectedCode = '+91';
  String selectedCategory = 'Category';
  // Default country code
  final List<String> countryCodes = ['+91', '+86', '+351', '+971', '+92'];

  final List<String> petCategory = ['Dog', 'Cat', 'Bird', 'Fish', 'Rabbit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        title: Text(
          "Donate Pets",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Text(
              "Pet Details",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            //pet details
            TextField(
              controller: petTypeController,
              decoration: InputDecoration(
                labelText: "Pet Type",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                suffixIcon: PopupMenuButton<String>(
                  onSelected: (value) {
                    setState(() {
                      selectedCode = value;
                    });
                  },
                  itemBuilder: (context) => petCategory
                      .map((code) => PopupMenuItem(
                            value: code,
                            child: Text(code,style: TextStyle(fontSize: 18),),
                          ))
                      .toList(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text(
                      selectedCode,
                      style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: petNameController,
              decoration: InputDecoration(
                labelText: "Pet Name",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: petAgeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Pet Age",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: petWeightController,
              decoration: InputDecoration(
                labelText: "Pet Weight",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: petBreedController,
              decoration: InputDecoration(
                labelText: "Pet Breed",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //owner details
            Text(
              "Owner Details",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: ownerNameController,
              decoration: InputDecoration(
                labelText: "Owner Name",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                hintText: 'Enter Your Name',
                hintStyle: TextStyle(color: Colors.deepPurpleAccent.withOpacity(0.2)),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: OwnerContactController,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                counterText: '',
                labelText: "Contact Number",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                prefixIcon: PopupMenuButton<String>(
                  onSelected: (value) {
                    setState(() {
                      selectedCode = value;
                    });
                  },
                  itemBuilder: (context) => countryCodes
                      .map((code) => PopupMenuItem(
                            value: code,
                            child: Text(code,style: TextStyle(fontSize: 18),),
                          ))
                      .toList(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text(
                      selectedCode,
                      style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 18),
                    ),
                  ),
                ),
                hintText: 'Enter phone number',
                hintStyle: TextStyle(color: Colors.deepPurpleAccent.withOpacity(0.2)),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller: OwnerAddressController,
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "building no. / flat no.",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                hintStyle: TextStyle(color: Colors.deepPurpleAccent.withOpacity(0.2)),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
