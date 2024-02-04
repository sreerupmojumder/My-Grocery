import 'package:flutter/material.dart';
import 'package:my_grocery/component/input_text_button.dart';

import '../../../component/input_outline_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      body: SafeArea(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Spacer(),
               const Text('Welcome', style: TextStyle(
                 color: Colors.black,
                 fontSize: 32,
                 fontWeight: FontWeight.bold
               ),),
               const Text('Sign in to continue!',
               style: TextStyle(
                 color:  Colors.grey,
                 fontSize: 22,
                 fontWeight: FontWeight.w400,
                 letterSpacing: 1.2,
               ),),
               const Spacer(
                 flex: 3,
               ),
               const TextField(
                 decoration: InputDecoration(
                   labelText: 'Email',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                     borderSide: BorderSide(
                       width: 1,
                       color: Colors.grey,
                     ),
                   ),
                 ),
               ),
               const SizedBox(height: 10,),
               const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                  ),
                ),
              ),
               const SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                     onTap: (){},
                     child: const Text('Forgot Password?', style: TextStyle(
                       fontSize: 12,
                     ),),

                   )
                 ],
               ),
               const Spacer(),
               InputTextButton(
                   title: 'Sign In',
                   onClick: (){}
               ),
               const SizedBox(height: 10,),
               InputOutlineButton(title: 'Back', onClick: (){
                 Navigator.of(context).pop();
               }),
               const Spacer(flex: 5,),
                const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("I'm new user"),
                   InkWell(
                     child: Text('Sign Up', style: TextStyle(
                       color: Colors.blue,
                     ),),
                   )
                 ],
               ),
               const SizedBox(height: 10,),
             ],
           ),
         ),
      ),
    );
  }
}
