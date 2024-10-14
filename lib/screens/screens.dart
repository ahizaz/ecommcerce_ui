import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_screen.dart';
class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex=0;
  static List<Widget>_widgetOptions=<Widget>[
   HomeScreen(),
    CartScreen(),
    Container(),
    Container(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
       body:_widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar:Container(
        decoration:BoxDecoration(
          color:Colors.white,
          boxShadow:[
            BoxShadow(
            blurRadius: 20,
              color:Colors.pinkAccent.withOpacity(0.1),
              
              
            ),
          ],
        ),
        child:SafeArea(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 14,vertical:8),
            child:GNav(
              rippleColor:Colors.pinkAccent,
              hoverColor: Colors.pink,
               gap: 7,
                activeColor: Colors.white,
                iconSize: 22,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical:12),
                duration:Duration(milliseconds: 300),
                tabBackgroundColor:Colors.redAccent,
                color:Colors.black54,

                tabs: [
                  GButton(icon:LineIcons.home,text:'Home'),
                  GButton(icon:LineIcons.shoppingBag,text:'Cart'),
                  GButton(icon:LineIcons.heart,text:'Wishlist'),
                  GButton(icon:LineIcons.user,text:'Account'),


                ],
              selectedIndex: _selectedIndex,
             onTabChange: (index){
                  setState(() {
                    _selectedIndex=index;
                  });
             },

            ),

            ),),
      ),
    );
  }
}
