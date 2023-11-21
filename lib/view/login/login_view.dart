import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';
import 'package:hungry_hub_2/common_widget/round_icon_button.dart';
import 'package:hungry_hub_2/common_widget/round_textfield.dart';
import 'package:hungry_hub_2/view/login/reset_password_view.dart';
import 'package:hungry_hub_2/view/login/sign_up_view.dart';
import 'package:hungry_hub_2/view/on_boarding/on_boarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override 
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override 
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64,),
              Text(
                "Login", 
                style: TextStyle(
                color: TColor.primaryText, 
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),
        
              Text(
                "Add your email to login", 
                style: TextStyle(
                color: TColor.secondaryText, 
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Password",
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                title: "Login", 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingView(), 
                    ),        
                  );
              }),
              const SizedBox(
                height: 4,
              ),
              
              TextButton(onPressed: () {

              }, child: Text(
                "Forgot password?", 
                style: TextStyle(
                color: TColor.secondaryText, 
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
              ),

              const SizedBox(
                height: 30,
                ),

                Text(
                  "or Login With",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  RoundIconButton(title: "Login with Facebook", icon: "assets/img/facebook_logo.png", color: const Color(0xff367FC0), onPressed: () {

                  }, ),
                  
                  const SizedBox(
                    height: 25,
                  ),
                  RoundIconButton(title: "Login with Google", icon: "assets/img/google_logo.png", color: const Color(0xffDD4B39), onPressed: () {

                  }, ),
                  const SizedBox(
                    height: 80,
                  ),

                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView(), ),);
                  }, child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an Account? ", 
                        style: TextStyle(
                        color: TColor.secondaryText, 
                        fontSize: 14, 
                        fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sign Up", 
                        style: TextStyle(
                        color: TColor.primary, 
                        fontSize: 14, 
                        fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}