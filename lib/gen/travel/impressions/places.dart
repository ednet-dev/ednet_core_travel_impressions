part of travel_impressions; 
 
// lib/gen/travel/impressions/places.dart 
 
abstract class PlaceGen extends Entity<Place> { 
 
  PlaceGen(Concept concept) { 
    this.concept = concept; 
    Concept? impressionConcept = concept.model.concepts.singleWhereCode("Impression"); 
    assert(impressionConcept!= null); 
    setChild("impressions", Impressions(impressionConcept!)); 
    Concept? webLinkConcept = concept.model.concepts.singleWhereCode("WebLink"); 
    assert(webLinkConcept!= null); 
    setChild("webLinks", WebLinks(webLinkConcept!)); 
  } 
 
  Reference get countryReference => getReference("country") as Reference; 
  void set countryReference(Reference reference) { setReference("country", reference); } 
  
  Country get country => getParent("country") as Country; 
  void set country(Country p) { setParent("country", p); } 
  
  String get name => getAttribute("name"); 
  void set name(String a) { setAttribute("name", a); } 
  
  String get city => getAttribute("city"); 
  void set city(String a) { setAttribute("city", a); } 
  
  String get description => getAttribute("description"); 
  void set description(String a) { setAttribute("description", a); } 
  
  Impressions get impressions => getChild("impressions") as Impressions; 
  
  WebLinks get webLinks => getChild("webLinks") as WebLinks; 
  
  Place newEntity() => Place(concept); 
  Places newEntities() => Places(concept); 
  
} 
 
abstract class PlacesGen extends Entities<Place> { 
 
  PlacesGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Places newEntities() => Places(concept); 
  Place newEntity() => Place(concept); 
  
} 
 
