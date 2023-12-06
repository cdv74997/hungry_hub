import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/category_cell_data.dart';
import 'package:hungry_hub_2/common_widget/most_popular_cell.dart';
import 'package:hungry_hub_2/common_widget/popular_restaurant_row.dart';
import 'package:hungry_hub_2/common_widget/recent_item_row.dart';
import 'package:hungry_hub_2/common_widget/round_textfield.dart';
import 'package:hungry_hub_2/common_widget/view_all_title_row.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override 
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "assets/img/cat_offer.png", "name": "Burgers"},
    {"image": "assets/img/cat_sri.png", "name": "Chinese"},
    {"image": "assets/img/cat_3.png", "name": "Italian"},
    {"image": "assets/img/cat_4.png", "name": "Indian"},
    
    ];

    List popArr = [
      {
        "image": "assets/img/cat_offer.png", 
        "name": "Burgers",
        "rate": "4.3",
        "rating": "124",
        "type": "American",
        "food_type": "Western Food",
      },
      {
        "image": "assets/img/cat_sri.png", 
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
        "image": "assets/img/cat_sri.png", 
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
        "image": "assets/img/cat_sri.png", 
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Hello User!", style: TextStyle(
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
                    Text("Delivering to", 
                      style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Current Location", 
                          style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          ),
                          ),
                          const SizedBox(width: 25,),

                          Image.asset(
                            "assets/img/dropdown.png",
                            width: 12,
                            height: 12,
                            ),
                        ],
                      ),

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
                        height: 30,
                      ),
                      
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: catArr.length,
                          itemBuilder: ((context, index) {
                            var catObj = catArr[index] as Map? ?? {};
                            return CategoryCell(
                              catObj: catObj, 
                              onTap: (){});
                        })
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ViewAllTitleRow(
                          title: "Popular Restaurants", 
                          onView: (){},
                        ),
                      ),

                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: popArr.length,
                          itemBuilder: ((context, index) {
                            var popObj = popArr[index] as Map? ?? {};
                            return PopularRestaurantRow(
                              popRestObj: popObj, 
                              onTap: (){});
                        })
                        ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ViewAllTitleRow(
                          title: "Most Popular", 
                          onView: (){},
                        ),
                      ),

                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: mostPopArr.length,
                          itemBuilder: ((context, index) {
                            var mostPopObj = mostPopArr[index] as Map? ?? {};
                            return MostPopularCell(
                              catObj: mostPopObj, 
                              onTap: (){});
                        })
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ViewAllTitleRow(
                          title: "Recent Items", 
                          onView: (){},
                        ),
                      ),

                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          itemCount: recentArr.length,
                          itemBuilder: ((context, index) {
                            var recentObj = recentArr[index] as Map? ?? {};
                            return RecentItemRow(
                              recentObj: recentObj, 
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