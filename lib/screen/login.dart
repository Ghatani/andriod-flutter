import 'dart:convert';

import 'package:dolakha_supplier_system/screen/register.dart';
import 'package:dolakha_supplier_system/utility/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String email="";
  final _formkey = GlobalKey<FormState>();

// text field controller init
 final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Form( 
              key: _formkey,
              child: Column(
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
                  controller: _usernameController,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* required"),
                    //EmailValidator(errorText: 'Invalid email'),
                    
                  ]),
          
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
                  controller: _passwordController,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* required"),
                    
                  ]),
                  
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
                    if (_formkey.currentState!.validate()){
                      setState(() {
                        _formkey.currentState!.save();
                        authCheck(_usernameController.text.toString(), _passwordController.text.toString());
                      });
                    }
              
                  },
                  child: Text('LOGIN')
                ),
                
                SizedBox(
                  height: screenHeight * .15,
                ),
                TextButton(                
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
              ],)
            ),
          ],
        ),
      ),
    );
  }

  void authCheck(String username, String password) async {
    // login api should be here
    String baseurl = 'http://127.0.0.1:90/';
    var url = Uri.parse(baseurl + 'user/login');
    var response = await http.post(url, 
    body: {'username': username, 'password': password});

    // print('Response body: ${response.body}');
    var responseData = jsonDecode(response.body); 
    if (responseData['message'] == 'Login success') {
      showToastMessage(responseData['message'], Colors.green);
      Navigator.pushNamed(context, '/home');
    } 
    else {
      showToastMessage(responseData['message'], Colors.red);
    }
  }
}
