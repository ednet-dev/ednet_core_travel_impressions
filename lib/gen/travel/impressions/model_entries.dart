part of travel_impressions; 
 
// lib/gen/travel/impressions/model_entries.dart 
 
class ImpressionsEntries extends ModelEntries { 
 
  ImpressionsEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.singleWhereCode("Traveler"); 
    entries["Traveler"] = Travelers(concept); 
    concept = model.concepts.singleWhereCode("Country"); 
    entries["Country"] = Countries(concept); 
    return entries; 
  } 
 
  Entities? newEntities(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Traveler") { 
      return Travelers(concept); 
    } 
    if (concept.code == "Place") { 
      return Places(concept); 
    } 
    if (concept.code == "Impression") { 
      return Impressions(concept); 
    } 
    if (concept.code == "Message") { 
      return Messages(concept); 
    } 
    if (concept.code == "Country") { 
      return Countries(concept); 
    } 
    if (concept.code == "WebLink") { 
      return WebLinks(concept); 
    } 
    if (concept.code == "Following") { 
      return Followings(concept); 
    } 
    return null; 
  } 
 
  Entity? newEntity(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Traveler") { 
      return Traveler(concept); 
    } 
    if (concept.code == "Place") { 
      return Place(concept); 
    } 
    if (concept.code == "Impression") { 
      return Impression(concept); 
    } 
    if (concept.code == "Message") { 
      return Message(concept); 
    } 
    if (concept.code == "Country") { 
      return Country(concept); 
    } 
    if (concept.code == "WebLink") { 
      return WebLink(concept); 
    } 
    if (concept.code == "Following") { 
      return Following(concept); 
    } 
    return null; 
  } 
 
  Travelers get travelers => getEntry("Traveler") as Travelers; 
  Countries get countries => getEntry("Country") as Countries; 
 
} 
 
