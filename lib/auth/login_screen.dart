import 'package:evently/app_theme.dart';
import 'package:evently/auth/register_screen.dart';
import 'package:evently/default_text_form_field.dart';
import 'package:evently/widgets/default_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
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
          DefaultTextFormField(hintText: 'Email' ,
          controller:emailController ,
          prefixIconImageName: 'email',
          ),
          SizedBox(height: 16),

          DefaultTextFormField(hintText: 'Password' ,
            controller:passwordController ,
            prefixIconImageName: 'password',
          ),
            SizedBox(height: 24),
         DefaultElevatedButton(label: 'login', onPressed: login),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Don’t Have Account ? ',
              style:Theme.of(context).textTheme.titleMedium,),
              TextButton(onPressed: () => Navigator.of(context).
              pushReplacementNamed(RegisterScreen.routeName),
                child:Text('Create Account'),
              ),

            ],
            ),
        ],
        ),
        
      ),
    );
  }
  void login(){}
}
