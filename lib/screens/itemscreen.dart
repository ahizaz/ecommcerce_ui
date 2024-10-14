import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

import '../widget/product_images.dart';
class ItemScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
            decoration:BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.only(
                bottomLeft:Radius.circular(30),
                bottomRight:Radius.circular(30),

              ),
            ),
            child:Stack(
              children: [
                Center(child: ProductImagesSlider()),
                Padding(padding: EdgeInsets.only(left: 15,top: 20),
                  child:InkWell(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child:Icon(
                      Icons.arrow_back_ios_new,
                      size: 25,
                    ),
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding:EdgeInsets.all(20),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Apple Watch",
                style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 22,
                ),

                ),
                SizedBox(height:10),
                Row(children: [
                  Container(
                    child:Row(children: [
                      RatingBar(
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) => debugPrint('$value'),
                        initialRating: 3,
                        maxRating: 5,
                      ),
                    ],),
                  )
                ],),
                SizedBox(width:5,),
                Row(
                  children: [
                    Text("1000Taka",
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 20,
                    ),),
                    Text("500 Taka",style:TextStyle(
                      color:Colors.black,
                      decoration:TextDecoration.lineThrough,
                    ),)
                  ],
                ),
                SizedBox(height: 20),
                Text("Your Apple Watch can help you track important health information, including your menstrual cycle, high and low heart rates, and irregularities in heart rhythm. "
                    "You can also take an ECG recording to check your heart rhythm using the ECG app on Apple Watch.",style:TextStyle(fontSize: 16),textAlign:TextAlign.justify,)

              ],
            ),


          ),
        ],

      ),),
      bottomNavigationBar:Container(
        height:70,
        margin:EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child:Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:(){},
              child:Container(
                height:60,
                width:MediaQuery.of(context).size.width/1.5,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(18),
                  color:Colors.redAccent,
                ),
             child:Center(
               child:Text("Add to Chart",style:TextStyle(
                 fontSize: 20,
                 color:Colors.white,
                 fontWeight:FontWeight.bold,
               ),),
             ),

              ),


            ),
            InkWell(
              onTap:(){},
              child:Container(
                height:60,
                width:MediaQuery.of(context).size.width/5.5,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(18),
                  color:Colors.white,
                ),
                child:Center(
                child:Icon(Icons.favorite_outline,color:Colors.red,),
                ),

              ),


            ),
          ],
        ),
      ),
    );
  }
}
