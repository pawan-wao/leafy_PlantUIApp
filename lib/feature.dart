import 'package:flutter/material.dart';
import 'package:fluttertest/model_data.dart';
import 'plantcolors.dart';
class Feature extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 280,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ModelData.item.length,
            itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'plantdetail');
              },
              child: Container(
                height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    ),
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Color(0xFF0C9869),
                     blurRadius: 8,
                      spreadRadius: 0.05,
                      offset: Offset(0 ,4),
                    )]
                  ),
                  margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                        ModelData.item[index].image.toString()),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(ModelData.item[index].name.toString(),style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          SizedBox(width: 33,),
                          Text("\$" + ModelData.item[index].price.toString(),style: TextStyle(
                            color: Color(0xFF0C9869), fontWeight: FontWeight.bold,
                          ),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(ModelData.item[index].country.toString(),style: TextStyle(
                        color: Color(0xFF0C9869), fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
                )
              ),
            );
            }
        ),
    );

  }
}



