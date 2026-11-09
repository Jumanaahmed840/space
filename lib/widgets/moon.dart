import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
   Moon({super.key , required this.mainWord , required this.subWord , this.isDetails = false});

   String mainWord ;
   String subWord ;
   bool isDetails ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Rectangle.png"),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors:[
                      Color(0xFF0E0E0E).withValues(alpha: 0),
                      Color(0xFF0E0E0E),
                    ] )
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(mainWord,textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: .bold,
                          color: Colors.white
                      ),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: isDetails,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: IconButton(style: IconButton.styleFrom(
                  backgroundColor: Colors.red ,
                  foregroundColor: Colors.white ,
                  iconSize: 30,
                  minimumSize: Size.fromRadius(16)
              ),
                  onPressed: (){
                   Navigator.pop(context) ;
                  }, icon: Icon(Icons.arrow_back_outlined)),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 12 , bottom: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(subWord ,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: .w700,
                  color: Colors.white
              ),),
          ),
        ),


      ],
    );
  }
}
