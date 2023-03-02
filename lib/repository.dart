part of travel_impressions; 
 
// lib/repository.dart 
 
class Repository extends CoreRepository { 
 
  static const REPOSITORY = "Repository"; 
 
  Repository([String code=REPOSITORY]) : super(code) { 
    var domain = Domain("Travel"); 
    domains.add(domain); 
    add(TravelDomain(domain)); 
 
  } 
 
} 
 
