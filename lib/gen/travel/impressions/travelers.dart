part of travel_impressions; 
 
// lib/gen/travel/impressions/travelers.dart 
 
abstract class TravelerGen extends Entity<Traveler> { 
 
  TravelerGen(Concept concept) { 
    this.concept = concept; 
    Concept? messageConcept = concept.model.concepts.singleWhereCode("Message"); 
    assert(messageConcept!= null); 
    setChild("messages", Messages(messageConcept!)); 
    Concept? followingConcept = concept.model.concepts.singleWhereCode("Following"); 
    assert(followingConcept!= null); 
    setChild("followedBy", Followings(followingConcept!)); 
    setChild("follows", Followings(followingConcept!)); 
  } 
 
  String get email => getAttribute("email"); 
  void set email(String a) { setAttribute("email", a); } 
  
  String get password => getAttribute("password"); 
  void set password(String a) { setAttribute("password", a); } 
  
  String get firstName => getAttribute("firstName"); 
  void set firstName(String a) { setAttribute("firstName", a); } 
  
  String get lastName => getAttribute("lastName"); 
  void set lastName(String a) { setAttribute("lastName", a); } 
  
  String get description => getAttribute("description"); 
  void set description(String a) { setAttribute("description", a); } 
  
  Messages get messages => getChild("messages") as Messages; 
  
  Followings get followedBy => getChild("followedBy") as Followings; 
  
  Followings get follows => getChild("follows") as Followings; 
  
  Traveler newEntity() => Traveler(concept); 
  Travelers newEntities() => Travelers(concept); 
  
} 
 
abstract class TravelersGen extends Entities<Traveler> { 
 
  TravelersGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Travelers newEntities() => Travelers(concept); 
  Traveler newEntity() => Traveler(concept); 
  
} 
 
