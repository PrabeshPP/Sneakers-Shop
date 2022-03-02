// ignore_for_file: file_names
import 'package:flutter/material.dart';

bool isVisible = true;

class SiginUp extends StatelessWidget {
  const SiginUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // For the Name Field
        Padding(
          padding: EdgeInsets.only(top: size * 0.02),
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                cursorColor: Colors.black,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 253, 253),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 3, left: 6),
                  hintText: "Name",
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.teal, width: 2.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0)),
                ),
              )),
        ),

        // For the Phone or Email field
        Padding(
          padding: EdgeInsets.only(top: size * 0.02),
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                cursorColor: Colors.black,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 253, 253),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.white),
                  contentPadding: const EdgeInsets.only(top: 3, left: 6),
                  hintText: "Phone or Email",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.teal, width: 2.0)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0)),
                ),
              )),
        ),
        //For the Password
        Padding(
          padding: EdgeInsets.only(top: size * 0.02),
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                obscureText: isVisible,
                cursorColor: Colors.teal,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 253, 253),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 3, left: 6),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.teal, width: 2.0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0)),
                ),
              )),

              
        ),
        Padding(padding: EdgeInsets.only(top: size * 0.02,
        left: MediaQuery.of(context).size.width*0.02),
        child:Row(
          children: const[
            CheckBoxContainer(),
            Text("Show Password",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),)
      ],
    );
  }
}

class CheckBoxContainer extends StatelessWidget {
  const CheckBoxContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
     fillColor: MaterialStateProperty.all(const Color.fromARGB(255, 6, 255, 230)),
      value: false,
      onChanged: (bool? value) {
     
      },
      
    );
  }
}
