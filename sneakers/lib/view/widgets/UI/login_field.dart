import 'package:flutter/material.dart';

class LoginField extends StatefulWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SizedBox(
              width: MediaQuery.of(context).size.width*0.7,
              child:  TextField(
                decoration: InputDecoration(
                  prefixIcon:const Icon(Icons.email),
                  prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                  
                 
                   filled: true, 
                    fillColor: Colors.white,
                    focusColor: Colors.red,
                    focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0),
                    borderSide: const BorderSide(width: 2,color: Colors.teal)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26.0),
                        borderSide:const BorderSide(width: 2, color: Colors.black))),
              ),
            ),
            TextField()
          ]),
    );
  }
}
