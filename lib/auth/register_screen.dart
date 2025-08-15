import 'package:evently/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../default_text_form_field.dart';
import '../widgets/default_elevated_button.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset('assets/images/logo.png', height:MediaQuery.sizeOf(context).height*0.2 ,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 24),
            DefaultTextFormField(hintText: 'Name' ,
              controller:nameController ,
              prefixIconImageName: 'name',
            ),
            SizedBox(height: 20),


            DefaultTextFormField(hintText: 'Email' ,
              controller:emailController ,
              prefixIconImageName: 'email',
            ),
            SizedBox(height: 24),

            DefaultTextFormField(hintText: 'Password' ,
              controller:passwordController ,
              prefixIconImageName: 'password',
            ),
            SizedBox(height: 24),
            DefaultElevatedButton(label: 'Create Account', onPressed: register),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Already Have Account ? ',
                style:Theme.of(context).textTheme.titleMedium,),
                TextButton(onPressed: () => Navigator.of(context).
                pushReplacementNamed(LoginScreen.routeName),
                  child:Text('login'),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }

  void register() {}
}


