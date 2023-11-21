import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map popRestObj;
  final VoidCallback onTap;
  const PopularRestaurantRow({super.key, required this.popRestObj, required this.onTap});

  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              popRestObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
                 
            const SizedBox(
              width: 8,
            ),

            const SizedBox(
              width: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      popRestObj["name"],
                      textAlign: TextAlign.center, 
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
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
                          popRestObj["rate"],
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.primary,
                            fontSize: 11,
                            
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "(${ popRestObj["rating"] } Ratings)",
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 11,
                            
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          popRestObj["type"],
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
                          popRestObj["food_type"],
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                            
                          ),
                        ),
                        
                      ],
                    ),
                    
                    
                  ],
                ),
            ),
            
          ],
        ),
      ),
    );
  }
}