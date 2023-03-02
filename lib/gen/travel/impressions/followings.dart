part of travel_impressions; 
 
// lib/gen/travel/impressions/followings.dart 
 
abstract class FollowingGen extends Entity<Following> { 
 
  FollowingGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Reference get followsReference => getReference("follows") as Reference; 
  void set followsReference(Reference reference) { setReference("follows", reference); } 
  
  Traveler get follows => getParent("follows") as Traveler; 
  void set follows(Traveler p) { setParent("follows", p); } 
  
  Reference get followedByReference => getReference("followedBy") as Reference; 
  void set followedByReference(Reference reference) { setReference("followedBy", reference); } 
  
  Traveler get followedBy => getParent("followedBy") as Traveler; 
  void set followedBy(Traveler p) { setParent("followedBy", p); } 
  
  bool get updateRights => getAttribute("updateRights"); 
  void set updateRights(bool a) { setAttribute("updateRights", a); } 
  
  Following newEntity() => Following(concept); 
  Followings newEntities() => Followings(concept); 
  
} 
 
abstract class FollowingsGen extends Entities<Following> { 
 
  FollowingsGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Followings newEntities() => Followings(concept); 
  Following newEntity() => Following(concept); 
  
} 
 
