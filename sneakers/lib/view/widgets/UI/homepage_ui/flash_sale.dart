import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/flash_sale_card.dart';
import 'package:nepseapp/view_model/flash_sale/flash_sale_bloc.dart';
import 'package:nepseapp/view_model/ticker/ticker.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FlashTimeSale(),
        FlashSaleCard(),
      ],
    );
  }
}

class FlashTimeSale extends StatelessWidget {
  const FlashTimeSale({Key? key}) : super(key: key);

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
        children: const[
          //Flash Sale Text
          FlashSaleText(),
           TimerSale(),
        ],
      ),
    );
  }
}

class FlashSaleText extends StatelessWidget {
  const FlashSaleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.4,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 60, 0),
          borderRadius: BorderRadius.circular(16.0)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flash Sale",
              style: TextStyle(
                  fontSize: size.height * 0.02,
                  color: Colors.white,
                  fontFamily: GoogleFonts.roboto().fontFamily),
            ),
            const Icon(
              Icons.flash_on_outlined,
              color: Colors.white,
            )
          ]),
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
      create: (context) => FlashSaleBloc(duration: 7200, ticker: Ticker())
        ..add(const FlashSaleStarted(duration: 7200)),
      child: BlocBuilder<FlashSaleBloc, FlashSaleState>(
        builder: (context, state) {
          if (state is FlashSaleInProgress) {
            String hour =
                (state.duration / 3600).floor().toString().padLeft(2, "0");
            String minute =
                ((state.duration / 60) % 60).floor().toString().padLeft(2, "0");
            String seccond =
                (state.duration % 60).floor().toString().padLeft(2, "0");
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
            return const Text("Nothing");
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
