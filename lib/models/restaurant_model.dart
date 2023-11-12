import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:hungry_hub/models/menu_item_model.dart';
import 'category_model.dart';

class Restaurant extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final List<Category> categories;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  const Restaurant({
    required this.id,
    required this.name,
    required this.tags,
    required this.imageUrl,
    required this.categories,
    required this.menuItems,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.distance,
  });

  factory Restaurant.fromSnapshot(DocumentSnapshot snap) {
    return Restaurant(
      id: snap['id'],
      name: snap['name'],
      imageUrl: snap['imageUrl'],
      tags: (snap['tags'] as List).map(
        (tag) {
          return tag as String;
        },
      ).toList(),
      categories: (snap['categories'] as List).map(
        (category) {
          return Category.fromSnapshot(category);
        },
      ).toList(),
      menuItems: (snap['menuItems'] as List).map(
        (product) {
          return MenuItem.fromSnapshot(product);
        },
      ).toList(),
      deliveryTime: snap['deliveryTime'],
      deliveryFee: snap['deliveryFee'],
      distance: snap['distance'],
    );
  }

  @override
  List<Object?> get props => 
  [id, imageUrl, name, tags, deliveryTime, deliveryFee, distance];

static List<Restaurant> restaurants = [
  Restaurant(
    id: 1,
    name: "Frosty Wonders Ice Cream",
    imageUrl: 'https://images.squarespace-cdn.com/content/v1/5f908ef54529ee3dd61a2b6d/1604717565100-7HSN0QMG3XV0XCE418A9/Wonders%252BSig.jpg',
    tags: ['Snow Cones', 'Desert', 'Ice Cream', 'Frozen Yogurt'],
    menuItems: MenuItem.menuItems.where((menuItem) => menuItem.restaurantId == 1).toList(),
    categories: Category.categories.where((category) => category.restaurantId == 1).toList(),
    deliveryTime: 30,
    deliveryFee: 2.99,
    distance: 0.1,
  ),
  Restaurant(
    id: 2,
    name: 'El Pollo Loco',
    imageUrl: 'data:image/png;base64,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',
    tags: ['Mexican Food', 'Chicken', 'Beef', 'Cantina'],
    menuItems: MenuItem.menuItems.where((menuItem) => menuItem.restaurantId == 2).toList(),
    categories: Category.categories.where((category) => category.restaurantId == 2).toList(),
    deliveryTime: 15,
    deliveryFee: 3.25,
    distance: 0.3,
  ),
  Restaurant(
    id: 3,
    name: 'In n Out',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/InNOut_2021_logo.svg/640px-InNOut_2021_logo.svg.png',
    tags: ['Burgers', 'Fries', 'American', 'Fast Food'],
    menuItems: MenuItem.menuItems.where((menuItem) => menuItem.restaurantId == 3).toList(),
    categories: Category.categories.where((category) => category.restaurantId == 3).toList(),
    deliveryTime: 45,
    deliveryFee: 4.00,
    distance: 2.3,
  ),
  Restaurant(
    id: 4,
    name: 'The Habit',
    imageUrl: 'https://logowik.com/content/uploads/images/the-habit-burger-grill1998.jpg',
    tags: ['Burgers', 'Fries', 'Shakes', 'Salads'],
    menuItems: MenuItem.menuItems.where((menuItem) => menuItem.restaurantId == 4).toList(),
    categories: Category.categories.where((category) => category.restaurantId == 4).toList(),
    deliveryTime: 15,
    deliveryFee: 3.25,
    distance: 0.3,
  ),
  Restaurant(
    id: 5,
    name: 'Yoshinoya',
    imageUrl: 'https://dspncdn.com/a1/media/692x/7c/8f/77/7c8f7780eaca008fa26ad12d52e28cff.jpg',
    tags: ['Japanese', 'Teriyaki', 'Beef', 'Chicken'],
    menuItems: MenuItem.menuItems.where((menuItem) => menuItem.restaurantId == 5).toList(),
    categories: Category.categories.where((category) => category.restaurantId == 5).toList(),
    deliveryTime: 15,
    deliveryFee: 3.25,
    distance: 0.3,
  ),
  
];
}