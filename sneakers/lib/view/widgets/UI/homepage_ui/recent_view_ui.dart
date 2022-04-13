import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/recent_view.dart';

class RecentViewUI extends StatelessWidget {
  const RecentViewUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.032, top: size.height * 0.04),
          child: Container(
            height: size.height*0.05,
            width: size.width*0.45,
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 255, 60, 0),
              borderRadius: BorderRadius.circular(16.0)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              "Recently Viewed",
              style: TextStyle(
                  fontSize: size.height * 0.02,
                  color: Colors.white,
                  fontFamily: GoogleFonts.roboto().fontFamily),
          ),
         const Icon(Icons.view_agenda,
          color: Colors.white,
          )
               ] ),
          )
        ),
        const RecentlyViewed()
       
      ],
    );
  }
}
