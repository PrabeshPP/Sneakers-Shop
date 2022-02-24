// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepseapp/repository/itemservices.dart';
import 'package:nepseapp/view_model/home_Item/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  final ItemServices itemServices;
  const HomePage({Key? key, required this.itemServices}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final max_size=MediaQuery.of(context).size;
    return BlocProvider(
        create: (BuildContext context) =>
            HomeBloc(itemServices: itemServices)..add(ItemLoading()),
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (state is HomeInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ItemLoadedState) {
            return GridView.builder(
             gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount:state.listItem.length,
                itemBuilder: ((context, index) => Card(
                  child:Text(state.listItem[index].name) ,
                )
            ));
          } else {
            return const Text("Something went Wrong");
          }
        }));
  }
}
