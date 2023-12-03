import 'package:flutter/material.dart';
import 'DummyData.dart';

class FeaturePro extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: DummyData.item.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context,'plantdetail');
              },
              child: Container(
                margin: EdgeInsets.only(right: 10,left: 12),
                width: 250,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Color(0xFF0C9869),
                    spreadRadius: 0.2,
                    blurRadius: 12,
                    offset: Offset(0,3),
                  ),],
                  borderRadius: BorderRadius.all(Radius.circular(54)),
                ),
                child: ClipRRect(
                  borderRadius:  BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(DummyData.item[index].image.toString(),
                  fit: BoxFit.cover,
                  ),
                )

              ),
            );
          }
      ),
    );
  }
}