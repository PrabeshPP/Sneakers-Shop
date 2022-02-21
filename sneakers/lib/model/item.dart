import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'item.g.dart';

@JsonSerializable()
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

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  List<Object?> get props => [id, name, color, imageUrl, price];
}
