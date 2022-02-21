import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int id;
  final String name;
  final String color;
  final String imageUrl;
  final int price;

 const Item(
      {required this.id,
      required this.name,
      required this.color,
      required this.imageUrl,
      required this.price});


  @override
  List<Object?> get props =>[id,name,color,imageUrl,price] ;
}
