part of travel_impressions; 
 
// lib/gen/travel/i_domain_models.dart 
 
class TravelModels extends DomainModels { 
 
  TravelModels(Domain domain) : super(domain) { 
    // fromJsonToModel function from ednet_core/lib/domain/model/transfer.json.dart 
 
    Model model = fromJsonToModel(travelImpressionsModelJson, domain, "Impressions"); 
    ImpressionsModel impressionsModel = ImpressionsModel(model); 
    add(impressionsModel); 
 
  } 
 
} 
 
