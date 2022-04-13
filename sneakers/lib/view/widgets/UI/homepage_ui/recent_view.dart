import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/model/item.dart';
import 'package:nepseapp/view_model/home_Item/Brands/bloc/home_bloc.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state is HomeInitial) {
        return const CircularProgressIndicator();
      } else if (state is ItemLoadedState) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.listItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.4,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return CatlogItems(item: state.listItems[index]);
          },
        );
      } else {
        return const Center(
          child: Text("Something went Wrong!"),
        );
      }
    });
  }
}

//This UI woulde be used for the bottom of the page

class CatlogItems extends StatelessWidget {
  final Item item;
  const CatlogItems({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: (){

        },
        child: Ink(
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(16.0)),
          child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.contain,
                ),
        ),
      ),
    );
  }
}

class FooterContainer extends StatelessWidget {
  const FooterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.heart,
              color: Colors.red,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 39.0),
          child: Material(
            borderRadius: BorderRadius.circular(16.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(16.0),
              onTap: () {},
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    "Buy",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.saira().fontFamily),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
