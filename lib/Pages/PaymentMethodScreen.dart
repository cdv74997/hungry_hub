import 'package:flutter/material.dart';
import 'package:hungry_hub/Pages/DebitCreditCardScreen.dart';
import 'package:hungry_hub/Pages/GiftCardScreen.dart';
import 'package:hungry_hub/Pages/InPersonScreen.dart';
import 'package:hungry_hub/Pages/PaypalScreen.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Payment Method'),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Add your menu icon action here
              },
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add your back button action here
            },
          ),
        ),
        body: ButtonScreen(),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the new screen when Button 1 is pressed
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DebitCreditCardScreen()));
                },
                child: Text('Debit / Credit Card'),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PayPalLoginScreen()));
                },
                child: Text('Paypal'),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GiftCardScreen()));
                },
                child: Text('Giftcard'),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => InPersonScreen()));
                },
                child: Text('In Person'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Add your action here for Button 1 in the footer
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Add your action here for Button 2 in the footer
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add your action here for Button 3 in the footer
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Add your action here for Button 4 in the footer
            },
          ),
        ],
      ),
    );
  }
}
