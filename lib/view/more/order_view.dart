import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';






class OrderView extends StatefulWidget {
  
  const OrderView({super.key});

  @override 
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {

  List itemArray = [
    {"name": "Double Cheeseburger", "qty": "2", "price": 16.88},
    {"name": "Sourdough Burger", "qty": "1", "price": 8.64},
    {"name": "Medium Onion Rings", "qty": "1", "price": 5.49},
    {"name": "Vanilla Shake", "qty": "2", "price": 11.58},
    {"name": "Large Curly Fries", "qty": "2", "price": 12.52},
    {"name": "Oreo Fudge Sundae", "qty": "1", "price": 5.46},
    
  ];

  
  TextEditingController txtSearch = TextEditingController();

 

    
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          "My Order", 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Row(
                  children: [
              
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/img/habit.png", 
                        width: 80, 
                        height: 80, 
                        fit: BoxFit.cover,)),
                    const SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    
                    Text(
                      "The Habit",
                      textAlign: TextAlign.center, 
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Image.asset(
                          "assets/img/rate.png",
                          width: 10,
                          height: 10,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "4.9",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primary,
                            fontSize: 11,
                            
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "(514 Ratings)",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                            
                          ),
                        ),
                       
                        
                      ],
                    ),
                    const SizedBox(height: 4,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                       
                        
                        Text(
                          "Burgers",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 11,
                            
                          ),
                        ),
              
                        Text(
                          " . ",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primary,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
              
                        Text(
                          "American",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                            
                          ),
                        ),
                        
                      ],
                    ),

                    const SizedBox(height: 4,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Image.asset(
                          "assets/img/location-pin.png",
                          width: 13,
                          height: 13,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            "1533 Maclay St. Sylmar CA, 91342",
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 11,
                              
                            ),
                          ),
                        ),
                        
                       
                        
                      ],
                    ),
                    
                    
                  ],
                ),
                        ],),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: itemArray.length,
                  separatorBuilder: ((context, index) => Divider(
                    indent: 25,
                    endIndent: 25,
                    color: TColor.secondaryText.withOpacity(0.5), 
                    height: 1,)),
                  itemBuilder: ((context, index) {
                    var itemObject = itemArray[index] as Map? ?? {};
                    return Container(
                      
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                      
                                    
                      
                          Expanded(
                            child: Text(
                                  "${ itemObject["name"].toString()} x${ itemObject["qty"].toString()}",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                          ),
                          const SizedBox(width: 15,),
                          Text(
                            "\$${itemObject["price"].toString()}",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700)),
                        
                             
                          
                           ],),
                           );
                
                      
                
                      } )),
              ),
             
                      
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25),
                child: Column(
                        children: [
                          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                               
                        Text(
                          "Delivery Instructions",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ),

                        TextButton.icon(
                          onPressed: (){}, 
                          icon: Icon(
                            Icons.add, 
                            color: TColor.primary
                          ), 
                          label: Text(
                          "Add Notes",
                          
                          style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w500),
                        ),),
                        
                       
                        
                      ],
                    ),
                    //const SizedBox(height: 4,),

                    Divider(
                    
                    color: TColor.secondaryText.withOpacity(0.5), 
                    height: 1,),

                    const SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                               
                        Text(
                          "Sub Total",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ),

                        Text(
                          "\$68.47",
                          
                          style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        
                       
                        
                      ],
                    ),

                    const SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                               
                        Text(
                          "Delivery Cost",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ),

                        Text(
                          "\$2.99",
                          
                          style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        
                       
                        
                      ],
                    ),

                    const SizedBox(height: 15,),

                    Divider(
                    
                    color: TColor.secondaryText.withOpacity(0.5), 
                    height: 1,),

                    const SizedBox(height: 15,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                               
                        Text(
                          "Total",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ),

                        Text(
                          "\$71.46",
                          
                          style: TextStyle(color: TColor.primary, fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        
                       
                        
                      ],
                    ),

                    const SizedBox(height: 20),

                    RoundButton(title: "Checkout", onPressed: (){}),

                    const SizedBox(height: 20),
                    
                    
                  ],
                ),
                        ],),
                    ),
                 
              
                  
                  
                  ],
                ),
              ),
          
          ),
        );
      

    
  }
}