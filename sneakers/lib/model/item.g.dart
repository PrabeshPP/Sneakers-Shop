// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      imageUrl: json['imageUrl'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
    };
