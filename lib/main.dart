import 'package:dolakha_supplier_system/screen/homePage.dart';
import 'package:dolakha_supplier_system/screen/login.dart';
import 'package:dolakha_supplier_system/screen/register.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => login(),
        '/register' : (context) => register()
      },
    );
  }
}