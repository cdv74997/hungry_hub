import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';

class MostPopularCell extends StatelessWidget {
  final Map catObj;
  final VoidCallback onTap;
  const MostPopularCell({super.key, required this.catObj, required this.onTap});

  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                catObj["image"].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              catObj["name"],
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
                Text(
                  catObj["type"],
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  " . ",
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  catObj["food_type"],
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
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
                  catObj["rate"],
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );;
  }
}