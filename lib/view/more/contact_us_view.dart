import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';






class ContactUsView extends StatefulWidget {
  
  const ContactUsView({super.key});

  @override 
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {

  List contactUsArray = [
    
      "Shall I compare thee to a summers day? Thou art more lovely and more temperate. Rough winds do shake the darling buds of May. And summer's lease hath all too short a date. Sometimes too hot the eye of heaven shines, and often is his gold complexion dimmed. And every fair from fair sometimes declines, by chance or natures changing course untrimmed. But thy eternal summer shall not fade. Nor lose possession of that fair thou owest. Nor shall death brag thou wanderest in his shade, when in eternal lines to time thou growest. So long as men can breathe and eyes can see, so long lives this and this gives life to thee",
     
    
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
                          "Contact Us", 
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
              ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: contactUsArray.length,
                             
                              itemBuilder: ((context, index) {
                                var txt = contactUsArray[index] as String? ?? "";
                                return Container(
                                 
                                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 4),
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: TColor.primary, 
                                          borderRadius: BorderRadius.circular(4)),),
                                    const SizedBox(width: 15,),
                      
                                    Expanded(
                                      child: 
                                          Text(
                                            txt,
                                            style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 14)),),
                                         
                                        ],
                                      ),
                                    );
                      
                                    
                      
                                  
                                  
                              }),
                            ),
             
                      
                  ],
                ),
              ),
          
          ),
        );
      

    
  }
}