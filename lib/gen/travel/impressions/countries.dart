part of travel_impressions; 
 
// lib/gen/travel/impressions/countries.dart 
 
abstract class CountryGen extends Entity<Country> { 
 
  CountryGen(Concept concept) { 
    this.concept = concept; 
    Concept? placeConcept = concept.model.concepts.singleWhereCode("Place"); 
    assert(placeConcept!= null); 
    setChild("places", Places(placeConcept!)); 
  } 
 
  String get name => getAttribute("name"); 
  void set name(String a) { setAttribute("name", a); } 
  
  Places get places => getChild("places") as Places; 
  
  Country newEntity() => Country(concept); 
  Countries newEntities() => Countries(concept); 
  
} 
 
abstract class CountriesGen extends Entities<Country> { 
 
  CountriesGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Countries newEntities() => Countries(concept); 
  Country newEntity() => Country(concept); 
  
} 
 
