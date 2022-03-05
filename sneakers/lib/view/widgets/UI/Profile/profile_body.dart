import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Orders",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontSize: 15),
        ),
        Row(
          children: const [
            Col(icons: Icons.payment, text: "To Pay"),
            Col(icons: Icons.local_activity,text: "To Ship"),
            Col(icons: Icons.local_shipping,text: "To Receive"),
            Col(icons: Icons.rate_review,text: "To Review")
          ],
        ),
        const Cancellation()
      ],
    );
  }
}

// Column for the MyOrders
class Col extends StatelessWidget {
  
  final IconData icons;
  final String text;
  const Col({Key? key,required this.icons,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(left:size.width*0.02,top: size.height*0.01 ),
      child: InkWell(
        onTap: (){

        },
        child: SizedBox(
          width: size.width*0.2,
          child: Column(
            children: [
              Icon(icons,
              size: 35,
              color: Theme.of(context).primaryColor,),
              Text(text,
              style: TextStyle(
                color: Theme.of(context).primaryColor
              ),)],
          ),
        ),
      ),
    );
  }
}

//Row for the Cancellation Component
class Cancellation extends StatelessWidget {
  const Cancellation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
