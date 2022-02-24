import 'package:dolakha_supplier_system/screen/addRecord.dart';
import 'package:dolakha_supplier_system/screen/addTransaction.dart';
import 'package:dolakha_supplier_system/screen/customers.dart';
import 'package:dolakha_supplier_system/screen/homePage.dart';
import 'package:dolakha_supplier_system/screen/login.dart';
import 'package:dolakha_supplier_system/screen/materials.dart';
import 'package:dolakha_supplier_system/screen/profile.dart';
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
        '/register' : (context) => register(),
        '/home' : (context) => profile(),
        '/customer' : (context) => customer(),
        '/addRecord' : (context) => addRecord(),
        '/addTransaction' : (context) => addTransaction(),
      },
    );
  }
}