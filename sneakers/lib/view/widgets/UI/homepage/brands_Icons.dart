// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepseapp/model/brandsIcons.dart';
import 'package:nepseapp/view_model/home_Item/Brands/bloc/home_bloc.dart';

class BrandsIconCard extends StatelessWidget {
  const BrandsIconCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeInitial) {
          return const CircularProgressIndicator();
        } else if (state is ItemLoadedState) {
          var listItem = state.listItem;
          return SizedBox(
            height: size.height * 0.06,
            width: size.width,
            child: ListView.builder(
              itemCount: listItem.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: size.width * 0.03),
                  child: Container(
                    
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 230, 0),
                        borderRadius: BorderRadius.circular(size.width * 0.1)),
                    child: Image.asset(
                      listItem[index].icon,
                      width: size.width * 0.35,
                      fit: BoxFit.none,
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return Text("Something Went Wrong!");
        }
      },
    );
  }
}
