import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/feature.dart';
import 'package:animated_svg/animated_svg.dart';
import 'package:fluttertest/feature_pro.dart';
import 'package:fluttertest/plant_detail.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'plantdetail': (context) => PlantDetail(),
      },
      home: Scaffold(
        backgroundColor: Color(0xFFF9F8FD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight:
                    Radius.circular(45),bottomLeft: Radius.circular(45)),
                    color: Color(0xFF0C9869),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons/menu.svg'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,top: 110),
                    child: Row(
                      children: [
                        Text('Hi Pawan!',style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),),
                        Spacer(),
                        Image.asset('assets/images/logo.png'),
                      ],
                    ),
                  ),

          ],
              ),
              SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(left: 25,right: 25),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Recomended',style: TextStyle(
                     color: Color(0xFF3C4046), fontSize: 16, fontWeight: FontWeight.bold,
                   ),),
                   Spacer(),
                   Container(
                     height: 18,
                     width: 57,
                     decoration: BoxDecoration(
                       color: Color(0xFF0C9869),
                       borderRadius: BorderRadius.all(Radius.circular(20),),
                     ),
                     child: Center(child: Text('More',style: TextStyle(color: Colors.white,),)),
                   )
                 ],
               ),
             ),
              Feature(),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Featured Plants',style: TextStyle(
                      color: Color(0xFF3C4046), fontSize: 16, fontWeight: FontWeight.bold,
                    ),),
                    Spacer(),
                    Container(
                      height: 18,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFF0C9869),
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),
                      child: Center(child: Text('More',style: TextStyle(color: Colors.white,),)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              FeaturePro(),
            ],
          ),
        ),
      ),
    );
  }
}