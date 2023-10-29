// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
      image: json['image'] as String,
      sports: const SportConverter().fromJson(json['sports'] as List),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'state': instance.state,
      'image': instance.image,
      'sports': const SportConverter().toJson(instance.sports),
    };
