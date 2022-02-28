import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/login_field.dart';
import 'package:nepseapp/view/widgets/clipper/big_clipper.dart';
import 'package:nepseapp/view/widgets/clipper/small_clipper.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          //! Main Big Size Box
          SizedBox(
            height: size.height,
            width: size.width,
          ),

          //! Big Clipper
          const Positioned(right: 0, child: BigClipper()),

          //!Small Clipper
          const Positioned(right: 0, child: LeftClipper()),

          //! Text Login
          Positioned(
              top: size.height * 0.1,
              left: size.width * 0.4,
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              )),

          //! TextFormField For the Email
          Positioned(
              top: size.height * 0.2,
              left: size.width * 0.15,
              child: const LoginField()),

          //! Login Button
          Positioned(
            top: size.height * 0.41,
            left: size.width * 0.2,
            child: Material(
              borderRadius: BorderRadius.circular(32.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(32.0),
                onTap: () {},
                child: Ink(
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                  height: size.height * 0.06,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 9, 66, 223),
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),
          ),
          //! Forgot Your Password ---Text
          Positioned(
              left: size.width * 0.31,
              top: size.height * 0.5,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot your Password ?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),

          //! or Connect With ----Text
          Positioned(
            left: size.width * 0.03,
            top: size.height * 0.76,
            child: Container(
              width: size.width * 0.3,
              height: size.height * 0.002,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),

          Positioned(
            top: size.height * 0.745,
            left: size.width * 0.365,
            child: const Text(
              "or connect with",
              style: TextStyle(fontSize: 16),
            ),
          ),

          Positioned(
            right: size.width * 0.03,
            top: size.height * 0.76,
            child: Container(
              width: size.width * 0.3,
              height: size.height * 0.002,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),

          //!

//! Facebook Login Button
          Positioned(
              top: size.height * 0.83,
              left: size.width * 0.03,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20.0),
                  onTap: () {},
                  child: Ink(
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )),

          //! Google Sigin Button
          Positioned(
              top: size.height * 0.83,
              right: size.width * 0.03,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20.0),
                  onTap: () {},
                  child: Ink(
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 133, 59, 36),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 20,
                        ),
                        const Text(
                          "Google",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )),

          Positioned(
              left: size.width * 0.25,
              top: size.height * 0.92,
              child: Row(
                children: [
                  const Text("Don't have an account?"),
                  TextButton(onPressed: () {}, child: const Text("Sign Up"))
                ],
              ))
        ],
      ),
    );
  }
}
