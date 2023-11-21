import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';
import 'package:hungry_hub_2/view/login/login_view.dart';
import 'package:hungry_hub_2/view/login/sign_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override 
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override 
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    
    
    
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png", 
                width: media.width,
                height: media.width * (4.8 / 4),

                ),

              Image.asset(
                "assets/img/app_logo.png", 
                width: media.width * 0.55, 
                height: media.width * 0.55, 
                fit: BoxFit.contain,
              ),

            ],
          ),

          SizedBox(
            height: media.width * 0.1, 
          ),

          Text(
            "Discover the best foods from restaurants\nand cuisine near you and delivered\nto your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(
            height: media.width * 0.1, 
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(title: "Login", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(),
              ),
              );
            }),
          ),

          const SizedBox(
            height: 20, 
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Create Account", 
              type: RoundButtonType.textPrimary,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView(),
              ),
              );
            }),
          ),
        ],
      ),
    );
  }
}