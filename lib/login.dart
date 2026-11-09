import 'package:flutter/material.dart';
import 'package:space_app/homeScreen.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const String routeName = "/login" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body: SafeArea(child:
      Stack(
        children: [
             Image.asset("assets/images/Frame.png" , fit: BoxFit.cover ,width: double.infinity,height: double.infinity, ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("""
 Explore 
 The
 Universe """ , style:
                 TextStyle(
                   fontSize: 48 ,
                   fontWeight: .bold ,
                   color: Colors.white,

                 ),),
               ],
             ),

          Align(
            alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red ,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))
                    ),
                      onPressed: (){
                      Navigator.pushReplacementNamed(context, Homescreen.routeName);
                      },
                      child:Row(
                    children: [
                      Text("Explore" , style: TextStyle(
                        fontSize: 20,
                        fontWeight: .bold,
                        color: Colors.white
                      ),),
                      Spacer(),
                      Icon(Icons.arrow_forward_rounded , size: 30,)
                    ],
                  ) ),
                ),
              ))
        ],
      )),
    );
  }
}
