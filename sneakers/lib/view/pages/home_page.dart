// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepseapp/repository/itemservices.dart';
import 'package:nepseapp/view_model/home_Item/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  final ItemServices itemServices;
  const HomePage({Key? key, required this.itemServices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => HomeBloc(itemServices: itemServices)..add(ItemLoading()),
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          print(state);
          if (state is HomeInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ItemLoadedState) {}
          return Text("Hello World");
        }));
  }
}
