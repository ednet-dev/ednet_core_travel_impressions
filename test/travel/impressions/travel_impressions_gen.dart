 
// test/travel/impressions/travel_impressions_gen.dart 
 
import "package:ednet_core/ednet_core.dart"; 
 
import "package:travel_impressions/travel_impressions.dart"; 
 
genCode() { 
  var repo = new Repository(); 
 
  // change "EDNetCore" to "YourDomainName" 
  var travelDomain = new Domain("Travel"); 
 
  // change ednet_core to yourDomainName 
  // change Skeleton to YourModelName 
  // change "Skeleton" to "YourModelName" 
  fromJsonToModel(travelImpressionsModelJson, travelDomain, "Impressions"); 
 
  repo.domains.add(travelDomain); 
 
  repo.gen("travel_impressions"); 
} 
 
initTravelData(TravelRepo travelRepo) { 
   var travelModels = 
       travelRepo.getDomainModels(TravelRepo.travelDomainCode); 
 
   var travelImpressionsEntries = 
       travelModels.getModelEntries(TravelRepo.travelImpressionsModelCode); 
   initTravelImpressions(travelImpressionsEntries); 
   travelImpressionsEntries.display(); 
   travelImpressionsEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var travelRepo = new TravelRepo(); 
  initTravelData(travelRepo); 
} 
 
