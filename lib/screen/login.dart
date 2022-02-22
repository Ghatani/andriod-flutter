import 'package:dolakha_supplier_system/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:motion_toast/motion_toast.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String email="";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * .12),
            const Text(
              "Welcome,",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * .01),
            Text(
              "Sign in to continue!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(.6),
              ),
            ),
            SizedBox(height: screenHeight * .12),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              autofocus: true,
            ),
            SizedBox(height: screenHeight * .025),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              
              obscureText: true,
              textInputAction: TextInputAction.next,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .075,
            ),
            ElevatedButton(
              onPressed: (){

              },
              child: Text('LOGIN')
            ),
            SizedBox(
              height: screenHeight * .15,
            ),
            TextButton(
              //onPressed: (){},
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const register(),
                ),
              ),
              child: RichText(
                text: const TextSpan(
                  text: "I'm a new user, ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
