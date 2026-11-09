import 'package:flutter/material.dart';
import 'package:space_app/detailsScreen.dart';
import 'package:space_app/widgets/moon.dart';
import 'package:space_app/widgets/planetModel.dart';

class Homescreen extends StatefulWidget {
    Homescreen({super.key});
  static const String routeName = "/home" ;

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int id =  0;
  late PageController _controller ;

  @override
  void initState() {
    _controller =PageController() ;
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body: Column(
        children: [
          Expanded(flex:2 , child: Moon(mainWord: "Explore" , subWord: """Which planet
would you like to explore?""",)),
          Expanded(flex:5, child: Column(
            children: [
            Expanded(
              child: PageView.builder(
                controller:_controller,
                onPageChanged: (page){
                  setState(() {
                    id = page ;
                  });
                },
                itemCount: Planet.planets.length,
                  itemBuilder: (context , index) {
                return Image.asset("${Planet.planets[index].image}");

              })
            ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    IconButton(style: IconButton.styleFrom(
                      backgroundColor: Colors.red ,
                      foregroundColor: Colors.white ,
                      iconSize: 30,
                      minimumSize: Size.fromRadius(16)
                  ),
                      onPressed: (){
                        _controller.previousPage(duration: Duration(milliseconds: 100), curve: Curves.bounceInOut);
                      }
                        , icon: Icon(Icons.arrow_back_outlined)),
                  Text( Planet.planets[id].title ,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: .bold,
                        color: Colors.white
                    ),),
                    IconButton(style: IconButton.styleFrom(
                      backgroundColor: Colors.red ,
                      foregroundColor: Colors.white ,
                      iconSize: 30,
                      minimumSize: Size.fromRadius(16)
                    ),
                        onPressed: (){
                          _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeInCubic);

                        }, icon: Icon(Icons.arrow_forward_rounded)),
                ],),
              ),

              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32 , right: 16 , left: 16),
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red ,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))
                        ),
                        onPressed: (){
                         Navigator.pushNamed(context, Detailsscreen.routeName ,
                             arguments: Planet.planets[id]  ) ;
                        },
                        child:Row(
                          children: [
                            Text("Explore ${Planet.planets[id].title}" , style: TextStyle(
                                fontSize: 20,
                                fontWeight: .bold,
                                color: Colors.white
                            ),),
                            Spacer(),
                            Icon(Icons.arrow_forward_rounded , size: 30,)
                          ],
                        ) ),
                  ),
                ),
              ),

          ],) ,)
        ],
      ),
    );
  }
}
