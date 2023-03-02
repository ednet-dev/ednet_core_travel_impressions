 
// test/travel/impressions/travel_impressions_gen.dart 
import "package:ednet_core/ednet_core.dart"; 
import "package:travel_impressions/travel_impressions.dart"; 
 
void genCode(CoreRepository repository) { 
  repository.gen("travel_impressions"); 
} 
 
void initData(CoreRepository repository) { 
   var travelDomain = repository.getDomainModels("Travel"); 
   ImpressionsModel? impressionsModel = travelDomain?.getModelEntries("Impressions") as ImpressionsModel?; 
   impressionsModel?.init(); 
   //impressionsModel.display(); 
} 
 
void main() { 
  var repository = CoreRepository(); 
  genCode(repository); 
  //initData(repository); 
} 
 
