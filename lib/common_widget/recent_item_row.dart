import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';

class RecentItemRow extends StatelessWidget {
  final Map recentObj;
  final VoidCallback onTap;
  const RecentItemRow({super.key, required this.recentObj, required this.onTap});

  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      recentObj["image"].toString(),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    recentObj["name"],
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
                      Text(
                        recentObj["type"],
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
                        recentObj["food_type"],
                        textAlign: TextAlign.center, 
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 12,
                          
                        ),
                      ),
                      
                    ],
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
                        recentObj["rate"],
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
                        "(${ recentObj["rating"] } Ratings)",
                        textAlign: TextAlign.center, 
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 11,
                          
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
    );;
  }
}