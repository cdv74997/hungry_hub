import 'package:flutter/material.dart';
import 'package:hungry_hub/Pages/PaymentMethodScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Add your action for the first option
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Add your action for the second option
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add your action for the third option
                // Open the PaymentMethodScreen
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PaymentMethodScreen(),
                ));
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Add your action for the fourth option
              },
            ),
          ],
        ),
      ),
    );
  }
}
