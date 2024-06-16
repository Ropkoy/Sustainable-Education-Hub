import 'package:flutter/material.dart';
import 'package:sdg_learning_app/sdg_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn About SDGs!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Let's explore the Sustainable Development Goals!",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Expanded(
              child: Container(
                height: 500.0,
                width: 700.0,
                child: Image.asset(
                  "images/SDGIcon.png",
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SdgListScreen()),
                    ),
                    child: const Text("Sustainable Development Goals Explorer"),
                  ),
                  const SizedBox(width: 10.0), // Add spacing between buttons
                  TextButton(
                    onPressed: () {},
                    child:
                        const Text(" Discover Each Goal "), // Specific SDG text
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
