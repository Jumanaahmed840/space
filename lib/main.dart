import 'package:flutter/material.dart';
import 'package:space_app/detailsScreen.dart';
import 'package:space_app/homeScreen.dart';
import 'package:space_app/login.dart';

void main(){
   runApp(spaceApp());
 }

 class spaceApp extends StatelessWidget {
   const spaceApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       routes: {
         Login.routeName : (_)=> Login() ,
         Homescreen.routeName : (_) => Homescreen(),
         Detailsscreen.routeName : (_) => Detailsscreen(),

       },
       initialRoute: Login.routeName,

     );
   }
 }


