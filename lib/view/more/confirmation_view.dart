import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';
import 'package:hungry_hub_2/view/home/home_view.dart';
import 'package:hungry_hub_2/view/login/welcome_view.dart';
import 'package:hungry_hub_2/view/main_tabview/main_tabview.dart';


class ConfirmationView extends StatefulWidget {
  const ConfirmationView({super.key});

  @override 
  State<ConfirmationView> createState() => _ConfirmationViewState();
}

class _ConfirmationViewState extends State<ConfirmationView> {
  
  @override 
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        
        width: media.width,
       
        decoration: BoxDecoration(
          color: TColor.white, 
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),
          ),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: TColor.primaryText,
                    size: 25,
                  ),
                )
              ],
            ),

              Image.asset(
                "assets/img/order_confirmation.png", 
                width: media.width * 0.55
              ),

              const SizedBox(height: 25,),
              Text(
                "Order Confirmed!",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8,),
              Text(
                "Buckle up for flavor! Delicious\nexperience is well on it's way!",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  "Your order is now being prepared. We will keep you apprised of updates. In the meantime keep an eye on the status of your order.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 34,),
              RoundButton(title: "Track Order", onPressed: (){}),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainTabView()),);
                },
                child: Text(
                  "Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                  ),
              ),
              const SizedBox(height: 8,),
          ],
        ),
      
    );
  }
}