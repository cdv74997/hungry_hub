import 'package:flutter/material.dart';
import 'package:hungry_hub_2/common/color_extension.dart';
import 'package:hungry_hub_2/common_widget/round_button.dart';

import 'package:hungry_hub_2/common_widget/round_textfield.dart';
import 'package:hungry_hub_2/view/login/login_view.dart';
import 'package:hungry_hub_2/view/login/otp_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override 
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override 
  Widget build(BuildContext context) {
    //var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64,),
              Text(
                "Sign Up", 
                style: TextStyle(
                color: TColor.primaryText, 
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),
        
              Text(
                "Add your info to sign up", 
                style: TextStyle(
                color: TColor.secondaryText, 
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Name",
                controller: txtName,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Mobile Number",
                controller: txtMobile,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Address",
                controller: txtAddress,
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
              RoundTextfield(
                hintText: "Confirm Password",
                controller: txtConfirmPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(title: "Sign Up", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OneTimePasswordView(), ),);
              }),

              const SizedBox(
                height: 30,
                ),

                
              const SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(), ),);
              }, child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an Account? ", 
                    style: TextStyle(
                    color: TColor.secondaryText, 
                    fontSize: 14, 
                    fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Login", 
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