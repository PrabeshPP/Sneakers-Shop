import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/recent_view.dart';

class RecentViewUI extends StatelessWidget {
  const RecentViewUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Padding(
          padding: EdgeInsets.only(left:size.width*0.032 ,top: size.height*0.01),
          child: Text("Recently Viewed",
          style: TextStyle(
            fontSize: size.height * 0.028,
            color: Colors.black,
            fontFamily: GoogleFonts.roboto().fontFamily
          ),),
        ),
       const  RecentlyViewed(),
      ],
    );
  }
}
