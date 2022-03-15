// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/model/item.dart';
import 'package:nepseapp/services/repository/itemservices.dart';

import 'package:nepseapp/view/widgets/UI/homepage/home_page_ui.dart';
import 'package:nepseapp/view_model/home_Item/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  final ItemServices itemServices;
  const HomePage({Key? key, required this.itemServices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final max_size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: max_size.height * 0.01),
      child: HomePageUI(),
    );
  }
}

class CatlogItems extends StatelessWidget {
  final Item item;
  const CatlogItems({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16.0)),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              item.name,
              style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontWeight: FontWeight.bold),
            ),

            //! Heart and the Buy button Widget container
            const FooterContainer()
          ],
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
