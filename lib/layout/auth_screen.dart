import 'dart:math';

import 'package:animation_page/components/constant.dart';
import 'package:animation_page/models/sign_in_screen.dart';
import 'package:animation_page/models/sign_up_screen.dart';
import 'package:animation_page/models/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isShowSignUp =false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [

          // Sign In
          AnimatedPositioned(
            duration: defaultDuration,
            width: size.width * 0.88,
            height: size.height,
           // left: isShowSignUp? size.width * 0.88 :0,
          //  right: !isShowSignUp ? size.width * 0.12 :size.width * 0.88 ,
            child: InkWell(
              onTap: (){
                setState(() {
                  isShowSignUp = false;
                });
              },
              child: Container(
                color: login_bg,
                child: const SignInScreen(),
              ),
            ),
          ),
          // Sign Up
          AnimatedPositioned(
            duration: defaultDuration,
            width:size.width * 0.88,
            height: size.height,
            left: isShowSignUp ? size.width * 0.12 :size.width * 0.878,
            child: InkWell(
              onTap: (){
                setState(() {
                  isShowSignUp = true;
                });
              },
              child: Container(
                color: signup_bg,
                child: const SignUpScreen(),
              ),
            ),
          ),
          // Logo
          AnimatedPositioned(
            duration: defaultDuration,
            left:isShowSignUp?size.width *0.12 :0,
            right:isShowSignUp?size.width *0.0 :size.width *0.11,
             top: size.height *0.1,
            child: CircleAvatar(
              radius: 25,
                 backgroundColor: Colors.white60,
                 child:isShowSignUp? SvgPicture.asset(
                     'assets/animation_logo.svg',
                   color: signup_bg,
                 ): SvgPicture.asset(
                   'assets/animation_logo.svg',
                   color: login_bg,
                 ),
            ),
          ),
          // social button
          AnimatedPositioned(
            duration: defaultDuration,
            //left: size.width * 0.25,
           // left: isShowSignUp? size.width *0.0 :size.width *0,
            right: isShowSignUp? size.width *-0.06 :size.width *0.04,
            bottom: size.height * 0.1,
            width: size.width,
            child: SocialButton(),
          ),

          // Text Sign In
          AnimatedPositioned(
            duration: defaultDuration,
            bottom: isShowSignUp ? size.height /2.2 :size.height * 0.3,
            left:isShowSignUp?size.width * 0.10 -95 :  size.width * 0.50 -70,
            child: InkWell(
              onTap: (){
                setState(() {
                  isShowSignUp = false;
                });

              },
              child: Container(
                width: 160,
                child: AnimatedRotation(
                  duration:defaultDuration ,
                  turns:isShowSignUp?  pi * 2.308  : 0,
                  child: Text(
                    'log in'.toUpperCase(),
                    style:  TextStyle(
                      color:isShowSignUp? Colors.white :Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: isShowSignUp? 20:32,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Text Sign Up
          AnimatedPositioned(
            duration: defaultDuration,
            bottom: !isShowSignUp ? size.height /2.2 :size.height * 0.29,
            left: !isShowSignUp?size.width * 0.71 :  size.width * 0.50 -45,
            child: AnimatedRotation(
              duration: defaultDuration,
              turns: !isShowSignUp?  pi *2.308  : 0,
              child: InkWell(
                onTap: (){
                  setState(() {
                    isShowSignUp = true;
                  });
                },
                child: Container(
                  width: 160,
                  child: Text(
                    'sign up'.toUpperCase(),
                    style:  TextStyle(
                      color: !isShowSignUp? Colors.white :Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: !isShowSignUp? 20:32,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
