import 'package:flutter/material.dart';

class WorldLocation extends StatefulWidget {
  const WorldLocation({Key? key}) : super(key: key);

  @override
  State<WorldLocation> createState() => _WorldLocationState();
}



class _WorldLocationState extends State<WorldLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Clock",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
