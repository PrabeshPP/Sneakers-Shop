import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Container(
          height: 20,
          width: MediaQuery.of(context).size.width*0.6,
          color: Colors.yellow,
          child:const  Padding(
            padding:  EdgeInsets.all(32.0),
            child:  TextField(
              
              decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(32.0))
               ),
                hintText: "PrabeshBista"
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}