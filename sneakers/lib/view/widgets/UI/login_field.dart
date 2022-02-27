import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: Colors.red,
                  ),
                ),
                Positioned(left: MediaQuery.of(context).size.width*0.1,
                top: MediaQuery.of(context).size.height*0.014,
                child: Icon(Icons.email)),
               
              ],
            ),
          )),
    );
  }
}
