import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';
import 'package:hungry_hub_2/common_widget/round_icon_button.dart';
import 'package:hungry_hub_2/view/more/add_card_view.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';




class PaymentMethodsView extends StatefulWidget {
  
  const PaymentMethodsView({super.key});

  @override 
  State<PaymentMethodsView> createState() => _PaymentMethodsViewState();
}

class _PaymentMethodsViewState extends State<PaymentMethodsView> {

  List cardArray = [
    {
      "icon": "assets/img/visa_icon.png",
      "card": "**** **** **** 7485"
    }
  ];
  TextEditingController txtSearch = TextEditingController();

 

    
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xfffDfDfD),
      
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
                          "Payment Methods", 
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
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        child: Text(
                          "Customize your payment method",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                        ),

                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Divider(
                          color: TColor.secondaryText.withOpacity(0.4),
                          height: 1,)
                        ),


                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(color: TColor.textfield, boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 15, offset: Offset(0, 10))
                        ]),
                        child: Column(
                          children: [
                            Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15 ,horizontal: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text(
                            "Cash/Card On Delivery",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                      
                            Image.asset("assets/img/check.png", 
                              width: 20, 
                              height: 20,
                            ),
                          ],),
                          ),
                            Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Divider(
                            color: TColor.secondaryText.withOpacity(0.4),
                            height: 1,)
                          ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: cardArray.length,
                              itemBuilder: ((context, index) {
                                var cardObj = cardArray[index] as Map? ?? {};
                                return Container(
                                  margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                                  child: Row(children: [
                                    Image.asset(
                                      cardObj["icon"].toString(),
                                      width: 50,
                                      height: 35,
                                      fit: BoxFit.contain,
                                      ),
                      
                                    const SizedBox(width: 15,),
                      
                                    Expanded(
                                      child: Text(
                                        cardObj["card"].toString(),
                                        style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                    ),
                      
                                    SizedBox(width: 100, height: 30,child: RoundButton(title: "Delete Card", fontSize: 14, onPressed: (){}, type: RoundButtonType.textPrimary,))
                      
                                  ],),
                                  );
                              })),
                          
                            Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Divider(
                            color: TColor.secondaryText.withOpacity(0.4),
                            height: 1,)
                          ),
                      
                           Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15 ,horizontal: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text(
                            "Other Methods",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                          ],),
                          ),
                      
                          const SizedBox(height: 15,),
                          ],
                        ),
                      ),

                      const SizedBox(height: 35,),
                      

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: RoundIconButton(title: "Add Credit/Debit Card", icon: "assets/img/add.png", fontSize: 16, color: TColor.primary, onPressed: (){
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context, 
                            builder: (context) {
                            return const AddCardView();

                          });
                        }),
                        ),

                      const SizedBox(height: 15,),

                      
                  ],
                ),
              ),
          
          ),
        );
      

    
  }
}