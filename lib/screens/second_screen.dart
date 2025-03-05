// lib/screens/second_screen.dart
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? address;

  // Constructor to receive data from the first screen
  SecondScreen({this.name, this.email, this.phone, this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Email: $email', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Phone: $phone', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Address: $address', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show a confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Confirmation'),
                      content: Text('Information submitted successfully!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                            Navigator.of(context).pop(); // Go back to the first screen
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Confirm'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Go back to the first screen to edit the information
                Navigator.of(context).pop();
              },
              child: Text('Edit Information'),
            ),
          ],
        ),
      ),
    );
  }
}
