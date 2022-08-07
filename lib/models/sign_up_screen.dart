import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.13),
      child: Column(
        children: [
          const Spacer(),
          TextFormField(
            style:const TextStyle(
                color: Colors.white
            ) ,
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                  color: Colors.white
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white54,
            ),
            keyboardType:TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            style:const TextStyle(
                color: Colors.white
            ) ,
            decoration: const InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                  color: Colors.white
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white54,
            ),
            keyboardType:TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            style:const TextStyle(
                color: Colors.white
            ) ,
            decoration: const InputDecoration(
              labelText: 'Confirm Password',
              labelStyle: TextStyle(
                  color: Colors.white
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white54,
            ),
            keyboardType:TextInputType.visiblePassword,
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
