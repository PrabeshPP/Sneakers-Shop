import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// need to complete the text form field
class LoginField extends StatefulWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                      hintText:'email or mobile number',
                      contentPadding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.teal)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26.0),
                          borderSide: const BorderSide(
                              width: 2, color: Colors.black))),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.015,
                top: MediaQuery.of(context).size.height * 0.015,
                child: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              )
            ],
          ),
          //! For the Password
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                    fillColor: Colors.white,
                      hintText: "password",
                        contentPadding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide:
                                const BorderSide(width: 3, color: Colors.teal)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26.0),
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.015,
                  top: MediaQuery.of(context).size.height * 0.015,
                  child: const Icon(
                    CupertinoIcons.keyboard,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),

        ]);
  }
}
