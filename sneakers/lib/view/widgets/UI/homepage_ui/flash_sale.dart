import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view_model/flash_sale/flash_sale_bloc.dart';
import 'package:nepseapp/view_model/ticker/ticker.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.04,
          left: size.width * 0.032,
          right: size.width * 0.042),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Flash Sale Text
          Text(
            "Flash Sale",
            style: TextStyle(
                color: Colors.black,
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: size.height * 0.028),
          ),
          const TimerSale()
        ],
      ),
    );
  }
}

//
class TimerSale extends StatelessWidget {
  const TimerSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => FlashSaleBloc(duration: 0, ticker: Ticker())..add(const FlashSaleStarted(duration: 0)),
      child: BlocBuilder<FlashSaleBloc, FlashSaleState>(
        builder: (context, state) {
          if (state is FlashSaleInProgress) {
            String hour =
                (state.duration / 3600).floor().toString().padLeft(2, "0");
            String minute =
                ((state.duration / 60) % 60).floor().toString().padLeft(2, "0");
            String seccond =
                (state.duration % 60 ).floor().toString().padLeft(2, "0");
            return Row(
              children: [
                Text(
                  "Closing in:",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: size.height * 0.02),
                ),
                TimeContainer(text: hour),
                TimeContainer(text: minute),
                TimeContainer(text: seccond),
              ],
            );
          } else {
            return Text("Nothing");
          }
        },
      ),
    );
  }
}

class TimeContainer extends StatelessWidget {
  final String text;
  const TimeContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.02),
      child: Container(
        height: size.height * 0.04,
        width: size.width * 0.08,
        color: const Color.fromARGB(255, 135, 138, 1),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontFamily: GoogleFonts.robotoMono().fontFamily,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
