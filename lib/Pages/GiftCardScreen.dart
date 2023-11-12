import 'package:flutter/material.dart';

class GiftCardScreen extends StatelessWidget {
  TextEditingController _giftCardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gift Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _giftCardController,
              decoration: InputDecoration(
                labelText: 'Enter Gift Card Number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String giftCardNumber = _giftCardController.text;
                // Add your action here for using the entered gift card number
                // You can validate the gift card number and perform the required actions.
              },
              child: Text('Use Gift Card'),
            ),
          ],
        ),
      ),
    );
  }
}
