import 'package:flutter/material.dart';
import 'package:space_app/widgets/moon.dart';
import 'package:space_app/widgets/planetModel.dart';

class Detailsscreen extends StatelessWidget {
  const  Detailsscreen({super.key ,});
  static const String routeName = "/details" ;

  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)?.settings.arguments as Planet ;
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body:
      Column(
        children: [
          Expanded(flex: 3 , child: Moon(mainWord: planet.title, subWord:planet.type , isDetails: true,), ) ,
          Expanded(flex: 8 , child: ListView(
            children: [
              Image.asset(planet.image) ,
              Column(
                crossAxisAlignment: .start,
                spacing: 16,
                children: [
                  Text("About" , style: TextStyle(
                    color: Colors.white ,
                    fontSize: 26 ,
                    fontWeight: .bold ,
                  ),) ,
                  Text(planet.about ,
                  style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .w300 ,
                  ),) ,
                  Text("Distance from Sun (km) : ${planet.distanceFromSunAu}" , style: TextStyle(
                      color: Colors.white ,
                      fontSize: 16 ,
                      fontWeight: .bold ,
                  ),) ,
                  Text("Length of Day (hours) :${planet.lengthOfDayHours} }", style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .bold ,
                  ),) ,
                  Text("Orbital Period (Earth years) : ${planet.orbitalPeriodYears}", style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .bold ,
                  ),) ,
                  Text("Radius (km) : ${planet.radiusKm}", style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .bold ,
                  ),) ,
                  Text("Mass (kg) : ${planet.massEarths}", style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .bold ,
                  ),) ,
                  Text("Gravity (m/s²) : ${planet.gravityMs2}", style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .bold ,
                  ),) ,
                  Text("Surface Area (km²) : ${planet.surfaceAreaKm2}", style: TextStyle(
                    color: Colors.white ,
                    fontSize: 16 ,
                    fontWeight: .bold ,
                  ),),
                ],
              ) ,
            ],
          ))
        ],
      ),
    );
  }
}
