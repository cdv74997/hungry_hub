import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/view/more/contact_us_view.dart';
import 'package:hungry_hub_2/view/more/inbox_view.dart';
import 'package:hungry_hub_2/view/more/notification_view.dart';
import 'package:hungry_hub_2/view/more/order_view.dart';
import 'package:hungry_hub_2/view/more/payment_methods_view.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override 
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  List moreArr = [{
    "index": "1",
    "name": "Payment Methods",
    "image":"assets/img/payment-method.png",
    "base": 0,
  },
  {
    "index": "2",
    "name": "Orders",
    "image":"assets/img/orders.png",
    "base": 0,
  },
  {
    "index": "3",
    "name": "Notifications",
    "image":"assets/img/more_notification.png",
    "base": 15,
  },
  {
    "index": "4",
    "name": "Inbox",
    "image":"assets/img/more_inbox.png",
    "base": 0,
  },
  {
    "index": "5",
    "name": "Contact Us",
    "image":"assets/img/more_info.png",
    "base": 0,
  },
  ];
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Account Itinerary", style: TextStyle(
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
              
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: moreArr.length,
                itemBuilder: (context, index) {
                  var moreObject = moreArr[index] as Map? ?? {};
                  var countBase = moreObject["base"] as int? ?? 0;
                  return InkWell(
                    onTap: (){
                      switch(moreObject["index"].toString()) {
                        case "1":
                          Navigator.push(context, MaterialPageRoute(builder: (context) => 
                          const PaymentMethodsView()));
                          break;

                        case "2":
                          Navigator.push(context, MaterialPageRoute(builder: (context) => 
                          const OrderView()));
                          break;

                        

                        case "3":
                          Navigator.push(context, MaterialPageRoute(builder: (context) => 
                          const NotificationsView()
                          ));

                          break;

                        case "4":
                          Navigator.push(context, MaterialPageRoute(builder: (context) => 
                          const InboxView()
                          ));

                          break;

                        case "5":
                          Navigator.push(context, MaterialPageRoute(builder: (context) => 
                          const ContactUsView()
                          ));

                        default:

                          

                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12, 
                              horizontal: 12
                            ),
                            decoration: BoxDecoration(
                              color: TColor.textfield,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            margin: const EdgeInsets.only(right : 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Container(
                                      width: 50,
                                      height: 50,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: TColor.placeholder,
                                        borderRadius: BorderRadius.circular(25)
                                      ),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        moreObject["image"].toString(), 
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.contain),
                              ),

                              const SizedBox(width: 15,),

                              Expanded(
                                child: Text(
                                  moreObject["name"].toString(),
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),),
                              const SizedBox(width: 15,),
                              if (countBase > 0)
                                Container(    
                                        
                                       
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(12.5)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          countBase.toString(),
                                          style: TextStyle(
                                            color: TColor.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                ),
                            
                              const SizedBox(width: 10,),
                            ],)
                    ),

                    Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: TColor.textfield,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Image.asset(
                              "assets/img/btn_next.png", 
                              width: 10,
                              height: 10,
                              color: TColor.primaryText),
                    ),
                        ],
                      ),
                    ),
                  );
                },
                ),
              
              ],),),),);
  }
}