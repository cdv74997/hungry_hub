import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/menu_item_row.dart';

import 'package:hungry_hub_2/common_widget/popular_restaurant_row.dart';

import 'package:hungry_hub_2/common_widget/round_textfield.dart';
import 'package:hungry_hub_2/view/menu/item_details_view.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';


class MenuItemView extends StatefulWidget {
  final Map menuObj;
  const MenuItemView({super.key, required this.menuObj});

  @override 
  State<MenuItemView> createState() => _MenuItemViewState();
}

class _MenuItemViewState extends State<MenuItemView> {
  TextEditingController txtSearch = TextEditingController();

 

    List menuItemsArr = [
      {
        "image": "assets/img/dess_1.png", 
        "name": "Apple Pie",
        "rate": "4.3",
        "rating": "124",
        "type": "Marie Calendars",
        "food_type": "Desserts",
      },
      {
        "image": "assets/img/dess_2.png", 
        "name": "German Chocolate Cake",
        "rate": "4.3",
        "rating": "124",
        "type": "Signature Select",
        "food_type": "Desserts",
      },
      {
        "image": "assets/img/dess_3.png", 
        "name": "Iced Cream Sunday",
        "rate": "4.3",
        "rating": "124",
        "type": "Breyers",
        "food_type": "Desserts",
      },
      {
        "image": "assets/img/dess_4.png", 
        "name": "Brownies",
        "rate": "4.3",
        "rating": "124",
        "type": "Marie Calendars",
        "food_type": "Desserts",
      },
    ];

    List mostPopArr = [
      {
        "image": "assets/img/cat_offer.png", 
        "name": "Burgers",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/chinese.png", 
        "name": "Chinese",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/cat_3.png", 
        "name": "Italian",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/cat_4.png", 
        "name": "Indian",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
    ];

    List recentArr = [
      {
        "image": "assets/img/cat_offer.png", 
        "name": "Burgers",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/chinese.png", 
        "name": "Chinese",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/cat_3.png", 
        "name": "Italian",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/cat_4.png", 
        "name": "Indian",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
    ];
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xfffDfDfD),
      
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20), 
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        icon: Image.asset("assets/img/btn_back.png", 
                        width: 20, 
                        height: 20,),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          widget.menuObj["name"].toString(), 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OrderView())
                            );
                        }, 
                        icon: Image.asset("assets/img/shopping_cart.png", 
                        width: 25, 
                        height: 25,
                        ),
                      ),

                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    

                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RoundTextfield(
                          hintText: "Search Food", 
                          controller: txtSearch,
                          left: Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Image.asset(
                              "assets/img/search.png",
                              width: 20,
                              height: 20,
                              ),
                              ),
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: menuItemsArr.length,
                          itemBuilder: ((context, index) {
                            var menuObj = menuItemsArr[index] as Map? ?? {};
                            return MenuItemRow(
                              popRestObj: menuObj, 
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemDetailsView()),);
                              });
                        })
                        ),

                      
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}