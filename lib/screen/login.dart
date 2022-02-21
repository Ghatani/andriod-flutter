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
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          child: Column(
          children: [
            CircleAvatar(
              //backgroundImage: AssetImage(""),
              radius: 80,
            ),
            SizedBox(height: 30),
            TextFormField(
              validator: MultiValidator([
                RequiredValidator(errorText: "* required"),
                EmailValidator(errorText: 'Invalid email'),
                //EmailValidator()
              ]),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              validator: MultiValidator([
                RequiredValidator(errorText: "* required"),
                
              ]),
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),             
            ),
            SizedBox(height: 25),
            ElevatedButton(onPressed: (){
              if (_formkey.currentState!.validate()){
                setState(() {
                  _formkey.currentState!.save();
                  MotionToast.success(description: 'Data saved successfully',
                  title: 'Success',
                  toastDuration: Duration(seconds: 3)).show(context);
                });
                
              }
              else{
                MotionToast.error(description: 'Not inserted, Something went wrong',
                title: 'error',
                ).show(context);
              }
            },
            child: Text('LOGIN')),
            SizedBox(height: 15),
            ElevatedButton(onPressed: (){
              _formkey.currentState!.reset();
            },
            child: Text('CLEAR')),
          ],
        )),

      ),
      
    );
  }
}
