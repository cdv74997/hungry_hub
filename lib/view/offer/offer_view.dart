import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';

import 'package:hungry_hub_2/common_widget/popular_restaurant_row.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';


class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override 
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  TextEditingController txtSearch = TextEditingController();

  List offerArr = [
    {
      "image": "assets/img/dennys.png",
      "name": "Denny's",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "American Diner"
    },
    {
      "image": "assets/img/red_robin.png",
      "name": "Red Robin",
      "rate": "4.9",
      "rating": "124",
      "type": "Restaurant",
      "food_type": "American Food"
    },
    {
      "image": "assets/img/offer_3.png",
      "name": "Coffee Bean and Tea Leaf",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Coffee Shop"
    },
    {
      "image": "assets/img/yoshinoya.png",
      "name": "Yoshinoya",
      "rate": "4.9",
      "rating": "124",
      "type": "Japanese",
      "food_type": "Teriyaki Beef and Chicken"
    },
    {
      "image": "assets/img/offer_2.png",
      "name": "Isso",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/offer_3.png",
      "name": "Cafe Beans",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Latest Offers", style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
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
                    Text("Find discounts. Offers specials\nand more", 
                      style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      ),
                      ),
                      

                      
                      
                      
                      
                     

                      const SizedBox(height: 15),

                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: offerArr.length,
                          itemBuilder: ((context, index) {
                            var popObj = offerArr[index] as Map? ?? {};
                            return PopularRestaurantRow(
                              popRestObj: popObj, 
                              onTap: (){});
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