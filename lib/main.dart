import 'package:flutter/material.dart';

class NullSafety {
  int? nullCheckForCountry() {
    String country = "USA";
    // country = null; //compilation error
    return country != null ? country.length : null;
  }

  int? safeCallForCountry() {
    String? country;
    return country?.length;
  }

  int? nullCheckForCity() {
    String? city = "Kolkata";
    city = null;
    return city != null ? city.length : null;
  }

  int? safeCallForCity() {
    String? city;
    return city?.length;
  }

  String? safeCallChainForValue() {
    Country? country = Country(City("Kolkata", "003"));
    return country.city?.code;
  }

  List<String?> safeCallUsingList() {
    List<String?> cities = ["Kolkata", null, "Mumbai"];
    List<String?> name = [];
    for (int i = 0; i < cities.length; i++) {
      String? city = cities[i];
      name.add(city);
    }
    return name;
  }

  String getDefaultValueIfObjectNull() {
    Country? country = Country(City("New Delhi", null));
    return country.city?.code ?? "Not available";
  }

  int? notNullAssertionForException() {
    String? country;
    return country!.length;
  }
}

class Country {
  City? city;

  Country(City? city) {
    this.city = city;
  }
}

class City {
  String? name;
  String? code;

  City(String? name, String? code) {
    this.name = name;
    this.code = code;
  }
}
