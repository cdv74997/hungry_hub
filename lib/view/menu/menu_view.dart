import 'package:flutter/material.dart';

import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_textfield.dart';
import 'package:hungry_hub_2/view/menu/menu_items_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override 
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/img/menu_1.png",
      "items_count": "4",
    },
    {
      "name": "Beverages",
      "image": "assets/img/menu_2.png",
      "items_count": "7",
    },
    {
      "name": "Desserts",
      "image": "assets/img/menu_3.png",
      "items_count": "3",
    },
    {
      "name": "Promotions",
      "image": "assets/img/menu_4.png",
      "items_count": "8",
    },
    ];
  TextEditingController txtSearch = TextEditingController();

  @override 
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: const Color(0xfffDfDfD),
      
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [

          Container(
            margin: const EdgeInsets.only(top: 180),
            width: media.width * 0.3,
            height: media.height * 0.6,
            decoration: BoxDecoration(color: TColor.primary, borderRadius: const BorderRadius.only(topRight: Radius.circular(35), bottomRight: Radius.circular(35),),
            ),
          ),
          SingleChildScrollView(
            
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
                        Text("Menu", style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          ),
                          ),
                          IconButton(
                            onPressed: (){}, 
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
                          ListView.builder(
                            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: menuArr.length,
                            itemBuilder: ((context, index) {
                              var menuObj = menuArr[index] as Map? ?? {};
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute
                                    (builder: (context) => MenuItemView(
                                      menuObj: menuObj)
                                    )
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 8, bottom: 8, right: 20),
                                      width: media.width - 100,
                                      height: 90,
                                      decoration: const BoxDecoration(
                                        color: Colors.white, 
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(10)), 
                                        boxShadow: [
                                      BoxShadow(color: Colors.black12, blurRadius: 7, offset: Offset(0, 4) )
                                    ]),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      Image.asset(
                                        menuObj["image"].toString(), 
                                        width: 80, 
                                        height: 80, 
                                        fit: BoxFit.contain, 
                                      ),
                                      const SizedBox(width: 15,),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              menuObj["name"].toString(),
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                              ),
                                              const SizedBox(height: 4,),
                              
                                              Text(
                                              "${menuObj["items_count"].toString()} items",
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w700),
                                              ),
                                          ],)),
                              
                                          Container(
                                            
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5), boxShadow: const [
                                            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2) )
                                          ]),
                                          alignment: Alignment.center,
                                          child: Image.asset("assets/img/btn_next.png", width: 15, height: 15,),
                                          
                                          ),
                                    ],),
                                  ],
                                ),
                              );
                            })
                          ),
                        ],
                      ),
                  ),
                  ],
                ),
            ),

            ),
        ],
      ),
    );
    

        


  }
}