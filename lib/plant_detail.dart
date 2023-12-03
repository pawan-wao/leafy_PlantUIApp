import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/plantcolors.dart';
class PlantDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF9F8FD),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(width: 115,
                     child: Column(
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           child: Card(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: SvgPicture.asset("assets/icons/sun.svg"),
                             ),
                             elevation: 3,
                           ),
                         ),
                         SizedBox(height: 40,),
                         ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           child: Card(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: SvgPicture.asset("assets/icons/icon_2.svg"),
                             ),
                             elevation: 3,
                           ),
                         ),
                         SizedBox(height: 40,),
                         ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           child: Card(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: SvgPicture.asset("assets/icons/icon_3.svg"),
                             ),
                             elevation: 3,
                           ),
                         ),
                         SizedBox(height: 40,),
                         ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           child: Card(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: SvgPicture.asset("assets/icons/icon_4.svg"),
                             ),
                             elevation: 3,
                           ),
                         ),

                       ],
                     ),
                   ),
                 ],
               ),
               // image
               Align(
                 alignment: Alignment.topRight,
                 child: Container(
                   width: MediaQuery.of(context).size.width*0.7,
                   height: MediaQuery.of(context).size.height*0.75,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       alignment: Alignment.topLeft,

                         image: AssetImage('assets/images/img.png'),
                         fit: BoxFit.cover),
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),
                         topLeft: Radius.circular(45)),
                     boxShadow: [
                       BoxShadow(
                         color: Color(0xFF0C9869),
                         blurRadius: 450,
                         spreadRadius: 0.001,
                         offset: Offset(0,1)
                     ),],
                   ),
                 ),
               ),
             ],
           ),
            SizedBox(height: 40,),
            // Plant Name
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Text('Angleica',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF3C4046),
                  ),),
                  Spacer(),
                  Text('\$${440}',style: TextStyle(color: Color(
                      0xFF0C9869,
                  ),
                    fontSize: 20, fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.only(left: 30, right: 25),
             child: Row(
               children: [
                 Text('Russia',style: TextStyle(
                 fontWeight: FontWeight.bold, fontSize: 20,
                   color: Color(0xFF0C9869),
               ),)
               ],
             ),
           ),
            Spacer(),
            // Buy Now Row
            Row(
              children: [
                Container(
                  height: 70,
                width: MediaQuery.of(context).size.height*0.26,
                decoration: BoxDecoration(
                  color: Color(0xFF0C9869),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                ),
                  child: Center(child: Text('Buy Now',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.height*0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                  ),
                  child: Center(child: Text('Desciption',style: TextStyle(
                    color: Color(0xFF3C4046),
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}