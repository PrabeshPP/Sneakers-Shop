// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/utils/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor
        ),
    
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.08,
              left:MediaQuery.of(context).size.width*0.08 ),
              child: SizedBox(
                
                height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.width*0.7,
                child: Image.asset("assets/welcome_shoes.png",
                fit: BoxFit.contain,
          ),
              ),
            ),
    
           Padding(
             padding:  EdgeInsets.only(top: 2.0,
             left:MediaQuery.of(context).size.width*0.08),
             child: Text("Your Favourite \n Shoes",
          style: TextStyle(
              fontFamily:GoogleFonts.lato().fontFamily,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor
          ),),

           ),
            Padding(
              padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.1),
              child:  Text("Find the latest men's running shoes for trail,\n road & track from top brands.",
              style: TextStyle(
                color: Theme.of(context).primaryColor
              ),),
            ),
            InkWell(
              onTap: (){

              },
              child: Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.3,
                left: MediaQuery.of(context).size.width*0.25),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width*0.56,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 202, 8, 236),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(left:3.0),
                        child: Icon(Icons.arrow_forward,
                        color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        
      ),
    );
  }
}