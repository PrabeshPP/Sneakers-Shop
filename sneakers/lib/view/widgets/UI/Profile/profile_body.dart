import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            Col(
              icons: Icons.payment,
              text: "To Pay",
              color: null,
            ),
            Col(
              icons: Icons.local_activity,
              text: "To Ship",
              color: null,
            ),
            Col(
              icons: Icons.local_shipping,
              text: "To Receive",
              color: null,
            ),
            Col(
              icons: Icons.rate_review,
              text: "To Review",
              color: null,
            )
          ],
        ),
        Row(
          children: const [
            Cancellation(
              icon: Icons.keyboard_return_sharp,
              text: "My Returns",
            ),
            Cancellation(
              icon: Icons.cancel,
              text: "My Cancellations",
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.03),
          child: Text(
            "My Service",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontSize: 15),
          ),
        ),
        Row(
          children: const [
            Col(
              icons: CupertinoIcons.mail,
              text: "Messages",
              color: null,
            ),
            Col(
              icons: Icons.message,
              text: "My Review",
              color: null,
            ),
            Col(
              icons: Icons.payment_sharp,
              text: "Payment\n Options",
              color: null,
            ),
            Col(
              icons: CupertinoIcons.question,
              text: "Help",
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}

// Column for the MyOrders
class Col extends StatelessWidget {
  final IconData icons;
  final String text;
  final Color? color;
  const Col(
      {Key? key, required this.icons, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (color != null) {
      return Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.02, top: size.height * 0.01),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: size.width * 0.2,
            child: Column(
              children: [
                Icon(
                  icons,
                  size: 35,
                  color: color,
                ),
                Text(
                  text,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.02, top: size.height * 0.01),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: size.width * 0.2,
            child: Column(
              children: [
                Icon(
                  icons,
                  size: 35,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  text,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}

//Row for the Cancellation Component
class Cancellation extends StatelessWidget {
  final IconData icon;
  final String text;
  const Cancellation({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.05, left: size.width * 0.08),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: size.width * 0.4,
                child: Row(
                  children: [Icon(icon), Text(text)],
                ))
          ],
        ),
      ),
    );
  }
}
