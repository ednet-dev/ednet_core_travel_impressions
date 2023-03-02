 
// web/travel/impressions/travel_impressions_web.dart 
 

import "package:ednet_core/ednet_core.dart"; 
 
import "package:ednet_core_default_app/ednet_core_default_app.dart"; 
import "package:travel_impressions/travel_impressions.dart"; 
 
void initData(CoreRepository repository) { 
   TravelDomain? travelDomain = repository.getDomainModels("Travel") as TravelDomain?; 
   ImpressionsModel? impressionsModel = travelDomain?.getModelEntries("Impressions") as ImpressionsModel?; 
   impressionsModel?.init(); 
   impressionsModel?.display(); 
} 
 
void showData(CoreRepository repository) { 
   // var mainView = View(document, "main"); 
   // mainView.repo = repository; 
   // new RepoMainSection(mainView); 
   print("not implemented"); 
} 
 
void main() { 
  var repository = CoreRepository(); 
  initData(repository); 
  showData(repository); 
} 
 
