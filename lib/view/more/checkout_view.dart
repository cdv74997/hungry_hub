import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';
import 'package:hungry_hub_2/view/more/change_address_view.dart';
import 'package:hungry_hub_2/view/more/confirmation_view.dart';






class CheckoutView extends StatefulWidget {
  
  const CheckoutView({super.key});

  @override 
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  List paymentMethods = [
    {"name": "**** **** **** 7547", "icon": "assets/img/visa_icon.png"},
    {"name": "**** **** **** 3543", "icon": "assets/img/mastercard.png"},
    {"name": "**** **** **** 2167", "icon": "assets/img/visa_icon.png"},
    {"name": "paytest24@gmail.com", "icon": "assets/img/paypal_logo.png"},
  ];

  int selectMethod = -1;

 
  
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
                          "Checkout", 
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          "Delivery Address",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                            
                          ),
                        ),
                    const SizedBox(
                      height: 8,
                    ),
                    
                    
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Expanded(
                          child: Text(
                          "62353 N Huntington Ave.\nSan Fernando, CA 91340",
                          
                          style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                                              ),
                                            ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),

                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangeAddressView()));
                        }, child: Text(
                          "Change",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700,
                          ),
                          )),
                        
                        const SizedBox(
                          width: 8,
                        ),
                        
                       
                        
                      ],
                    ),
                    
                  ],
                ),
              
          ),

              const SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
             
              ),   
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                               
                        Text(
                          "Payment Method",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
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
                          "Add Card",
                          
                          style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700),
                        ),),
                        
                       
                        
                      ],
                    ),

                    ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: paymentMethods.length,
                          itemBuilder:(context, index) {
                            var paymentObject = paymentMethods[index] as Map? ?? {};
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                            decoration: BoxDecoration(
                              color: TColor.textfield, 
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: TColor.secondaryText.withOpacity(0.2),)
                              ),
                            child: Row(
                              children: [
                                Image.asset(paymentObject["icon"].toString(), width: 50, height: 22, fit: BoxFit.contain), 
                                const SizedBox(width: 8,),
                                Expanded(
                                  child: Text(
                                    paymentObject["name"],
                                    
                                    style: TextStyle(color: TColor.primaryText, fontSize: 12, fontWeight: selectMethod == index ? FontWeight.w900 : FontWeight.w500),
                                  ),
                                ),

                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectMethod = index;
                                    });
                                  },
                                  child: Icon(
                                    selectMethod == index ? Icons.radio_button_on : Icons.radio_button_off,
                                    color: TColor.primary, size: 15,
                                    ),
                                )
                              ],),
                          );
                          },
                        ),
                    
                    
                     ], ), ), 
              const SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
             
              ),   
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    
                    
                    
                    
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
                            fontWeight: FontWeight.w500,
                            
                          ),
                        ),

                        Text(
                          "\$68.47",
                          
                          style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w500),
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
                            fontWeight: FontWeight.w500,
                            
                          ),
                        ),

                        Text(
                          "\$2.99",
                          
                          style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        
                       
                        
                      ],
                    ),
                    const SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                               
                        Text(
                          "Discount",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            
                          ),
                        ),

                        Text(
                          "-\$4.00",
                          
                          style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w700),
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
                            fontWeight: FontWeight.w500,
                            
                          ),
                        ),

                        Text(
                          "\$67.46",
                          
                          style: TextStyle(color: TColor.primaryText, fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        
                       
                        
                      ],
                    ),

                    

                    
                    
                    
                  ],
                ),
                        
                    ),

                     const SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
             
              ),   
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: RoundButton(title: "Confirm Order", onPressed: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                    return const ConfirmationView();
                  });
                  
                }),),

                    
                 
              
                  
                  
                  ],
                ),
              ),
          
          ),
        );
      

    
  }
}