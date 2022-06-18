import 'package:flutter/material.dart';
import 'navbar.dart';

void main() {
  runApp(const MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const Navbar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Navigation Drawer"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                elevation: 10,
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            onPressed:()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Navbar()) ,);
            } ,
            icon: const Icon(Icons.open_in_new),
            label: const Text("Open Navigation Drawer")),
      ),
    );
  }
}
