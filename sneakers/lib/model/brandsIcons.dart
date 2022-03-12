// ignore_for_file: file_names

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brandsIcons.g.dart';

@JsonSerializable()
class BrandsIcon extends Equatable{
  final int id;
  final String name;
  final String icon;

  const BrandsIcon({required this.id, required this.name, required this.icon});

  factory BrandsIcon.fromJson(Map<String, dynamic> json) => _$BrandsIconFromJson(json);

  Map<String,dynamic> toJSon()=> _$BrandsIconToJson(this);

  @override
  List<Object?> get props => [id,name,icon];
}
