import 'package:flutter/material.dart';
import '../../models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/restaurants/restaurants_bloc.dart';
import '../../widgets/widgets.dart';
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
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: Category.categories.length,
                itemBuilder: (context, index) {
                  return CategoryBox(category: Category.categories[index]);
              }),
            ),
          ],
        ),
      ),
      );
  }
  
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {},
          ),
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            Text('CURRENT LOCATION',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.white,
                ),
            ),
            Text(
              'Sylmar, CA',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Colors.white,
              ),
            ),

          ],
          ));
  }
  @override 
  Size get preferredSize => Size.fromHeight(56.0);
   
  }
  //Widget build(BuildContext context) {
  //  return Scaffold(
  //    appBar: AppBar(title: Text('Home'), centerTitle: true, backgroundColor: Theme.of(context).primaryColor,),
  //    body: Center(
  //      child: Column(
  //        mainAxisAlignment: MainAxisAlignment.center,
  //        children: [ 
  //          ElevatedButton(
  //            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
  //            child: Text('Location Screen'), 
  //            onPressed: () {
  //              Navigator.pushNamed(context, '/location');
  //            },
  //          ),
  //          ElevatedButton(
  //            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
  //            child: Text('Restaurant Details'), 
  //            onPressed: () {
  //              Navigator.pushNamed(context, '/restaurant-details');
  //            },
  //          ),
  //          ElevatedButton(
  //            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
  //            child: Text('Restaurant Listing'), 
  //            onPressed: () {
  //              Navigator.pushNamed(context, '/restaurant-listing');
  //            },
  //          ),
  //          ElevatedButton(
  //            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
  //            child: Text('Voucher'), 
  //            onPressed: () {
  //              Navigator.pushNamed(context, '/voucher');
  //            },
  //          ),
  //          ElevatedButton(
  //            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
  //            child: Text('Cart'), 
  //            onPressed: () {
  //              Navigator.pushNamed(context, '/cart');
  //            },
  //          ),
  //          ElevatedButton(
  //            style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
  //            child: Text('Checkout'), 
  //            onPressed: () {
  //              Navigator.pushNamed(context, '/checkout');
  //            },
  //          ),
  //        ],
  //      ),
  //    ),
  //  );
  //}
