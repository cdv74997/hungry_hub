import 'package:flutter/material.dart';
import 'package:hungry_hub/screens/home/home_screen.dart';
import 'package:hungry_hub/screens/location/location_screen.dart';
import 'package:hungry_hub/screens/cart/cart_screen.dart';
import 'package:hungry_hub/screens/checkout/checkout_screen.dart';
import 'package:hungry_hub/screens/filter/filter_screen.dart';
import 'package:hungry_hub/screens/restaurant_details/restaurant_details_screen.dart';
import 'package:hungry_hub/screens/restaurant_listing/restaurant_listing_screen.dart';
import 'package:hungry_hub/screens/voucher/voucher_screen.dart';
class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
      default:
        return _errorRoute();
    }
  }
  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))), 
      settings: RouteSettings(name: '/error'),
      );
  }
}

