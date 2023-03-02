part of travel_impressions; 
 
// lib/gen/travel/impressions/web_links.dart 
 
abstract class WebLinkGen extends Entity<WebLink> { 
 
  WebLinkGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  Reference get placeReference => getReference("place") as Reference; 
  void set placeReference(Reference reference) { setReference("place", reference); } 
  
  Place get place => getParent("place") as Place; 
  void set place(Place p) { setParent("place", p); } 
  
  Uri get url => getAttribute("url"); 
  void set url(Uri a) { setAttribute("url", a); } 
  
  String get title => getAttribute("title"); 
  void set title(String a) { setAttribute("title", a); } 
  
  String get description => getAttribute("description"); 
  void set description(String a) { setAttribute("description", a); } 
  
  WebLink newEntity() => WebLink(concept); 
  WebLinks newEntities() => WebLinks(concept); 
  
} 
 
abstract class WebLinksGen extends Entities<WebLink> { 
 
  WebLinksGen(Concept concept) { 
    this.concept = concept; 
  } 
 
  WebLinks newEntities() => WebLinks(concept); 
  WebLink newEntity() => WebLink(concept); 
  
} 
 
