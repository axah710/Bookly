import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  const Epub({this.isAvailable});

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
      );

  final bool? isAvailable;

  @override
  List<Object?> get props => [isAvailable];

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
      };
}
//It is a class called 'Epub' that extends the 'Equatable' class. It has a 
//single nullable boolean property called 'isAvailable'. The class has a 
//constructor that takes an optional parameter 'isAvailable'. It also has
// a factory method 'fromJson' that takes a JSON object and returns an 
//instance of 'Epub' with the 'isAvailable' property set based on the 
//value in the JSON object. The class also has a 'toJson' method that 
//converts the 'Epub' object to a JSON object. Finally, the class overrides
// the 'props' getter from the 'Equatable' class to return a list containing 
//the 'isAvailable' property.

// Flow:
// The 'Epub' class is defined with a nullable boolean property 'isAvailable'.
// The class has a constructor that takes an optional parameter 'isAvailable' 
//and assigns it to the 'isAvailable' property.
// The class has a factory method 'fromJson' that takes a JSON object and
// returns an instance of 'Epub' with the 'isAvailable' property set based
// on the value in the JSON object.
// The class has a 'toJson' method that converts the 'Epub' object to a 
//JSON object by creating a map with the 'isAvailable' property.
// The class overrides the 'props' getter from the 'Equatable' class to 
//return a list containing the 'isAvailable' property.