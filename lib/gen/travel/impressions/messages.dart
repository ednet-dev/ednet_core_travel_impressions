part of travel_impressions; 
 
// lib/gen/travel/impressions/messages.dart 
 
abstract class MessageGen extends Entity<Message> { 
 
  MessageGen(Concept concept) { 
    this.concept = concept; 
    Concept? impressionConcept = concept.model.concepts.singleWhereCode("Impression"); 
    assert(impressionConcept!= null); 
    setChild("impressions", Impressions(impressionConcept!)); 
  } 
 
  Reference get travelerReference => getReference("traveler") as Reference; 
  void set travelerReference(Reference reference) { setReference("traveler", reference); } 
  
  Traveler get traveler => getParent("traveler") as Traveler; 
  void set traveler(Traveler p) { setParent("traveler", p); } 
  
  DateTime get date => getAttribute("date"); 
  void set date(DateTime a) { setAttribute("date", a); } 
  
  String get subject => getAttribute("subject"); 
  void set subject(String a) { setAttribute("subject", a); } 
  
  String get text => getAttribute("text"); 
  void set text(String a) { setAttribute("text", a); } 
  
  Impressions get impressions => getChild("impressions") as Impressions; 
  
  Message newEntity() => Message(concept); 
  Messages newEntities() => Messages(concept); 
  
} 
 
abstract class MessagesGen extends Entities<Message> { 
 
  MessagesGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Messages newEntities() => Messages(concept); 
  Message newEntity() => Message(concept); 
  
} 
 
