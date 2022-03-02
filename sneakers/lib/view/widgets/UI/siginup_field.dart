// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SiginUp extends StatelessWidget {
  const SiginUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       // For the Name Field
        SizedBox(
          width: MediaQuery.of(context).size.width*0.7,
          child:const TextField(
            cursorColor: Colors.black,
            style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            decoration: InputDecoration(
              
              hintText: "Name",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0
                )
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0
                )
              ),
            ),
          )
        ),

        // For the Phone or Email field
        SizedBox(
          width: MediaQuery.of(context).size.width*0.7,
          child:const TextField(
            cursorColor: Colors.black,
            style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            decoration: InputDecoration(
              hintText: "Phone or Email",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0
                )
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0
                )
              ),
            ),
          )
        ),
        //For the Password
        SizedBox(
          width: MediaQuery.of(context).size.width*0.7,
          child:const TextField(
            cursorColor: Colors.black,
            style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            decoration: InputDecoration(
              hintText: "Password",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0
                )
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0
                )
              ),
            ),
          )
        ),


      ],
    );
  }
}
