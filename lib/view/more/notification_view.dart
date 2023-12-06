import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';






class NotificationsView extends StatefulWidget {
  
  const NotificationsView({super.key});

  @override 
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {

  List notificationArray = [
    {
      "title": "Your orders has been picked up",
      "time": "Now",
    },
    {
      "title": "Your order has been delivered",
      "time": "1 h ago",
    },
    {
      "title": "Your orders has been picked up",
      "time": "3 h ago",
    },
    {
      "title": "Your order has been delivered",
      "time": "5 h ago",
    },
    {
      "title": "Your orders has been picked up",
      "time": "05 Jun 2023",
    },
    {
      "title": "Your order has been delivered",
      "time": "05 Jun 2023",
    },
    {
      "title": "Your orders has been picked up",
      "time": "06 Jun 2023",
    },
    {
      "title": "Your order has been delivered",
      "time": "06 Jun 2023",
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
                          "Notifications", 
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
                              itemCount: notificationArray.length,
                              separatorBuilder: ((context, index) => Divider(
                                indent: 25,
                                endIndent: 25,
                                color: TColor.secondaryText.withOpacity(0.4), 
                                height: 1,)),
                              itemBuilder: ((context, index) {
                                var notificationObj = notificationArray[index] as Map? ?? {};
                                return Container(
                                  decoration: BoxDecoration(color: index % 2 == 0 ? TColor.white : TColor.textfield),
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
                                            notificationObj["time"].toString(),
                                            style: TextStyle(
                                              color: TColor.secondaryText,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
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