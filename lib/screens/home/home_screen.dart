import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(), 
      settings: RouteSettings(name: routeName),
      );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            ElevatedButton(
              child: Text('Location Screen'), 
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
            ),
            ElevatedButton(
              child: Text('Restaurant Details'), 
              onPressed: () {
                Navigator.pushNamed(context, '/restaurant-details');
              },
            ),
            ElevatedButton(
              child: Text('Restaurant Listing'), 
              onPressed: () {
                Navigator.pushNamed(context, '/restaurant-listing');
              },
            ),
            ElevatedButton(
              child: Text('Voucher'), 
              onPressed: () {
                Navigator.pushNamed(context, '/voucher');
              },
            ),
            ElevatedButton(
              child: Text('Cart'), 
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            ElevatedButton(
              child: Text('Checkout'), 
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
            ),
          ],
        ),
      ),
    );
  }
}