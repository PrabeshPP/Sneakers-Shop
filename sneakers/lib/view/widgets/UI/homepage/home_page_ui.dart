import 'package:flutter/material.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Material(
      child: SizedBox(
        height:size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height*0.06,
              width: size.width*0.8,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: Colors.yellow
              ),
              child: Row(
                children: [
                  
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
