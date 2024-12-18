import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Application',
            style: TextStyle(
              fontFamily: 'MontserratAlternates',
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter text',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
            onPressed: () {
              // Action for the first button
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Button 1 Clicked')),
              );
            },
            child: const Text('click2'),
          ),
          const SizedBox(height: 10), // Space between buttons
          ElevatedButton(
            onPressed: () {
              // Action for the second button
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Button 2 Clicked')),
              );
            },
            child: const Text('click'),
          ),
        ],
      ),
    );
  }
}
