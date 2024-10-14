import 'package:flutter/material.dart';

import '../screens/itemscreen.dart';
class GridItems extends StatelessWidget{
  var pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];
  @override
  Widget build(BuildContext context) {
return GridView.builder(
  itemCount:pNames.length,
  physics:NeverScrollableScrollPhysics(),
  shrinkWrap: true,

  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7),
  itemBuilder:(context,index){
    return Container(
      margin:EdgeInsets.all(10),
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(15),
        color:Colors.blueGrey,
        boxShadow: [
          BoxShadow(
            color:Colors.black,
            blurRadius:4,
            spreadRadius: 2,
          )
        ]
      ),
      child:Padding(
          padding: EdgeInsets.all(10),
        child:Column(
          children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "50% off",
              style:TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Icon(Icons.favorite,color:Colors.redAccent),
          ],


        ),
            SizedBox(height: 8),
            Padding(
                padding: EdgeInsets.all(10),
              child:InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>ItemScreen()));
                  },

                  child: Image.asset("images/${pNames[index]}.png",height: 95,width: 100,)),


            ),
            SizedBox(height:10),
            Padding(padding:EdgeInsets.all(8),
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                  pNames[index],
                  style:TextStyle(
                    fontSize:16,
                    color:Colors.black,
                    fontWeight:FontWeight.bold,
                  ),

                  ),
                  SizedBox(height:10),
                  Row(
                    children: [
                      Text("1000 Taka",style: TextStyle(
                        fontSize: 14,
                        color:Colors.black,
                        fontWeight:FontWeight.w500,
                      ),),
                      SizedBox(width:10),
                      Text("50% off",style:TextStyle(
                        decoration:TextDecoration.lineThrough,
                        fontSize: 13,
                        color:Colors.black,
                        fontWeight:FontWeight.w500,
                      ),)
                    ],
                  )
                ],
              ),






            ),

          ],
        ),



      ),
    );
  },

);
  }
  
}