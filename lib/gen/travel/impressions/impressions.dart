part of travel_impressions; 
 
// lib/gen/travel/impressions/impressions.dart 
 
abstract class ImpressionGen extends Entity<Impression> { 
 
  ImpressionGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Reference get placeReference => getReference("place") as Reference; 
  void set placeReference(Reference reference) { setReference("place", reference); } 
  
  Place get place => getParent("place") as Place; 
  void set place(Place p) { setParent("place", p); } 
  
  Reference get messageReference => getReference("message") as Reference; 
  void set messageReference(Reference reference) { setReference("message", reference); } 
  
  Message get message => getParent("message") as Message; 
  void set message(Message p) { setParent("message", p); } 
  
  String get text => getAttribute("text"); 
  void set text(String a) { setAttribute("text", a); } 
  
  Impression newEntity() => Impression(concept); 
  Impressions newEntities() => Impressions(concept); 
  
} 
 
abstract class ImpressionsGen extends Entities<Impression> { 
 
  ImpressionsGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Impressions newEntities() => Impressions(concept); 
  Impression newEntity() => Impression(concept); 
  
} 
 
