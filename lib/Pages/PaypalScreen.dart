import 'package:flutter/material.dart';

class PayPalLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PayPal Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 100, // You can adjust the size as needed
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true, // Hide the password
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the login action here
                // You can use Navigator to navigate to another screen after login
              },
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
