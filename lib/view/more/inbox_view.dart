import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';






class InboxView extends StatefulWidget {
  
  const InboxView({super.key});

  @override 
  State<InboxView> createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {

  List inboxArray = [
    {
      "title": "Your orders has been picked up",
      "body": "Lorem ipsum sin dolor emet till. Mary had a litle lamb whose fleece was white as snow. Hooray I am writing filler text! How long will you be reading this for?",
    },
    {
      "title": "Your orders has been picked up",
      "body": "Lorem ipsum sin dolor emet till. Mary had a litle lamb whose fleece was white as snow. Hooray I am writing filler text! How long will you be reading this for?",
    },
    {
      "title": "Your orders has been picked up",
      "body": "Lorem ipsum sin dolor emet till. Mary had a litle lamb whose fleece was white as snow. Hooray I am writing filler text! How long will you be reading this for?",
    },
    {
      "title": "Your orders has been picked up",
      "body": "Lorem ipsum sin dolor emet till. Mary had a litle lamb whose fleece was white as snow. Hooray I am writing filler text! How long will you be reading this for?",
    },
    {
      "title": "Your orders has been picked up",
      "body": "Lorem ipsum sin dolor emet till. Mary had a litle lamb whose fleece was white as snow. Hooray I am writing filler text! How long will you be reading this for?",
    },
    {
      "title": "Your orders has been picked up",
      "body": "Lorem ipsum sin dolor emet till. Mary had a litle lamb whose fleece was white as snow. Hooray I am writing filler text! How long will you be reading this for?",
    },
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
                          "Inbox", 
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
              ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: inboxArray.length,
                              separatorBuilder: ((context, index) => Divider(
                                indent: 25,
                                endIndent: 25,
                                color: TColor.secondaryText.withOpacity(0.4), 
                                height: 1,)),
                              itemBuilder: ((context, index) {
                                var notificationObj = inboxArray[index] as Map? ?? {};
                                return Container(
                                  decoration: BoxDecoration(color: index % 3 != 2 ? TColor.white : TColor.textfield),
                                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: TColor.primary, 
                                          borderRadius: BorderRadius.circular(4)),),
                                    const SizedBox(width: 15,),
                      
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            notificationObj["title"].toString(),
                                            style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                          const SizedBox(height: 4),
                                          Text(
                                            notificationObj["body"].toString(),
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: TColor.secondaryText,
                                              fontSize: 14,
                                             )),
                                        ],
                                      ),
                                    ),
                      
                                    
                      
                                  ],),
                                  );
                              })),
             
                      
                  ],
                ),
              ),
          
          ),
        );
      

    
  }
}