
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_play/data/city/enums/enums.dart';
import 'package:just_play/data/city/helpers/helpers.dart';

part 'city.freezed.dart';
part 'city.g.dart';

/// Represents a city with various attributes.
///
/// This class defines the characteristics of a city, such as its 
/// identifier (id),
/// name, country, state, image, and the list of sports it offers. It leverages
/// the `freezed_annotation` library to generate immutable constructors 
/// and methods
/// for safer object creation and serialization.
///
/// Parameters:
///  - [id]: A unique identifier for the city.
///  - [name]: The name of the city.
///  - [country]: The country in which the city is located.
///  - [state]: The state or region where the city is situated.
///  - [image]: The image associated with the city.
///  - [sports]: A list of sports available in the city.
///
/// Example:
///
/// ```dart
/// final city = City(
///   id: '123',
///   name: 'Sample City',
///   country: 'Sample Country',
///   state: 'Sample State',
///   image: 'city_image.png',
///   sports: [Sport.soccer, Sport.tennis],
/// );
/// ```
///
/// In the example above, an instance of the `City` class is created with the
/// specified attributes. The `@freezed` annotation facilitates the creation of
/// immutable objects and simplifies serialization and deserialization of city
/// data.

@freezed
class City with _$City {
  factory City({
    required String id,
    required String name,
    required String country,
    required String state,
    required String image,
    @SportConverter() required List<Sport> sports,
  }) = _City;
	
  factory City.fromJson(Map<String, dynamic> json) =>
			_$CityFromJson(json);
}
