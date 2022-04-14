// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/model/item.dart';
import 'package:nepseapp/repository/icons_services.dart';
import 'package:nepseapp/repository/itemservices.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/home_page_ui.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/search_bar.dart';
import 'package:nepseapp/view_model/home_Item/Brands/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  final IconsServices iconsServices;
  final ItemServices itemServices;
  const HomePage(
      {Key? key, required this.iconsServices, required this.itemServices})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            HomeBloc(iconsServices: iconsServices, itemServices: itemServices)
              ..add(ItemLoading()),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {},
              icon: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.qrcode_viewfinder,
                    color: Colors.black,
                  ),
                  Text("Scan",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.black)),
                ],
              ),
            ),
            title: const SearchBarUI(),
          ),
          body: RefreshIndicator(
            onRefresh: _onReferesh,
            child: const SingleChildScrollView(
              child: HomePageUI(),
            ),
          ),
        ));
  }

  Future<void> _onReferesh() async {

  }
}
