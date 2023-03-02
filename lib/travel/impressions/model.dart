 
part of travel_impressions; 
 
// lib/travel/impressions/model.dart 
 
class ImpressionsModel extends ImpressionsEntries { 
 
  ImpressionsModel(Model model) : super(model); 
 
  void fromJsonToTravelerEntry() { 
    fromJsonToEntry(travelImpressionsTravelerEntry); 
  } 
 
  void fromJsonToCountryEntry() { 
    fromJsonToEntry(travelImpressionsCountryEntry); 
  } 
 
  void fromJsonToModel() { 
    fromJson(travelImpressionsModel); 
  } 
 
  void init() {
    initCountries();
    initTravelers();
  }
 
  void initTravelers() {
    var traveler1 = Traveler(travelers.concept); 
    traveler1.email = 'room'; 
    traveler1.password = 'selfie'; 
    traveler1.firstName = 'office'; 
    traveler1.lastName = 'element'; 
    traveler1.description = 'darts'; 
    travelers.add(traveler1); 
 
    var traveler1messages1 = Message(traveler1.messages.concept); 
    traveler1messages1.date = new DateTime.now(); 
    traveler1messages1.subject = 'table'; 
    traveler1messages1.text = 'pattern'; 
    traveler1messages1.traveler = traveler1; 
    traveler1.messages.add(traveler1messages1); 
 
    var traveler1messages1impressions1 = Impression(traveler1messages1.impressions.concept); 
    traveler1messages1impressions1.text = 'house'; 
    var traveler1messages1impressions1Place = countries.random().places.random(); 
    traveler1messages1impressions1.place = traveler1messages1impressions1Place; 
    traveler1messages1impressions1.message = traveler1messages1; 
    traveler1messages1.impressions.add(traveler1messages1impressions1); 
    traveler1messages1impressions1Place.impressions.add(traveler1messages1impressions1); 
 
    var traveler1messages1impressions2 = Impression(traveler1messages1.impressions.concept); 
    traveler1messages1impressions2.text = 'ticket'; 
    var traveler1messages1impressions2Place = countries.random().places.random(); 
    traveler1messages1impressions2.place = traveler1messages1impressions2Place; 
    traveler1messages1impressions2.message = traveler1messages1; 
    traveler1messages1.impressions.add(traveler1messages1impressions2); 
    traveler1messages1impressions2Place.impressions.add(traveler1messages1impressions2); 
 
    var traveler1messages2 = Message(traveler1.messages.concept); 
    traveler1messages2.date = new DateTime.now(); 
    traveler1messages2.subject = 'camping'; 
    traveler1messages2.text = 'baby'; 
    traveler1messages2.traveler = traveler1; 
    traveler1.messages.add(traveler1messages2); 
 
    var traveler1messages2impressions1 = Impression(traveler1messages2.impressions.concept); 
    traveler1messages2impressions1.text = 'election'; 
    var traveler1messages2impressions1Place = countries.random().places.random(); 
    traveler1messages2impressions1.place = traveler1messages2impressions1Place; 
    traveler1messages2impressions1.message = traveler1messages2; 
    traveler1messages2.impressions.add(traveler1messages2impressions1); 
    traveler1messages2impressions1Place.impressions.add(traveler1messages2impressions1); 
 
    var traveler1messages2impressions2 = Impression(traveler1messages2.impressions.concept); 
    traveler1messages2impressions2.text = 'flower'; 
    var traveler1messages2impressions2Place = countries.random().places.random(); 
    traveler1messages2impressions2.place = traveler1messages2impressions2Place; 
    traveler1messages2impressions2.message = traveler1messages2; 
    traveler1messages2.impressions.add(traveler1messages2impressions2); 
    traveler1messages2impressions2Place.impressions.add(traveler1messages2impressions2); 
 
    var traveler1followedBy1 = Following(traveler1.followedBy.concept); 
    traveler1followedBy1.updateRights = true; 
    var traveler1followedBy1FollowedBy = travelers.random(); 
    traveler1followedBy1.followedBy = traveler1followedBy1FollowedBy; 
    traveler1followedBy1.follows = traveler1; 
    traveler1.followedBy.add(traveler1followedBy1); 
    traveler1followedBy1FollowedBy.follows.add(traveler1followedBy1); 
 
    var traveler1followedBy2 = Following(traveler1.followedBy.concept); 
    traveler1followedBy2.updateRights = false; 
    var traveler1followedBy2FollowedBy = travelers.random(); 
    traveler1followedBy2.followedBy = traveler1followedBy2FollowedBy; 
    traveler1followedBy2.follows = traveler1; 
    traveler1.followedBy.add(traveler1followedBy2); 
    traveler1followedBy2FollowedBy.follows.add(traveler1followedBy2); 
 
    var traveler2 = Traveler(travelers.concept); 
    traveler2.email = 'salad'; 
    traveler2.password = 'baby'; 
    traveler2.firstName = 'message'; 
    traveler2.lastName = 'professor'; 
    traveler2.description = 'email'; 
    travelers.add(traveler2); 
 
    var traveler2messages1 = Message(traveler2.messages.concept); 
    traveler2messages1.date = new DateTime.now(); 
    traveler2messages1.subject = 'executive'; 
    traveler2messages1.text = 'body'; 
    traveler2messages1.traveler = traveler2; 
    traveler2.messages.add(traveler2messages1); 
 
    var traveler2messages1impressions1 = Impression(traveler2messages1.impressions.concept); 
    traveler2messages1impressions1.text = 'smog'; 
    var traveler2messages1impressions1Place = countries.random().places.random(); 
    traveler2messages1impressions1.place = traveler2messages1impressions1Place; 
    traveler2messages1impressions1.message = traveler2messages1; 
    traveler2messages1.impressions.add(traveler2messages1impressions1); 
    traveler2messages1impressions1Place.impressions.add(traveler2messages1impressions1); 
 
    var traveler2messages1impressions2 = Impression(traveler2messages1.impressions.concept); 
    traveler2messages1impressions2.text = 'explanation'; 
    var traveler2messages1impressions2Place = countries.random().places.random(); 
    traveler2messages1impressions2.place = traveler2messages1impressions2Place; 
    traveler2messages1impressions2.message = traveler2messages1; 
    traveler2messages1.impressions.add(traveler2messages1impressions2); 
    traveler2messages1impressions2Place.impressions.add(traveler2messages1impressions2); 
 
    var traveler2messages2 = Message(traveler2.messages.concept); 
    traveler2messages2.date = new DateTime.now(); 
    traveler2messages2.subject = 'beans'; 
    traveler2messages2.text = 'security'; 
    traveler2messages2.traveler = traveler2; 
    traveler2.messages.add(traveler2messages2); 
 
    var traveler2messages2impressions1 = Impression(traveler2messages2.impressions.concept); 
    traveler2messages2impressions1.text = 'feeling'; 
    var traveler2messages2impressions1Place = countries.random().places.random(); 
    traveler2messages2impressions1.place = traveler2messages2impressions1Place; 
    traveler2messages2impressions1.message = traveler2messages2; 
    traveler2messages2.impressions.add(traveler2messages2impressions1); 
    traveler2messages2impressions1Place.impressions.add(traveler2messages2impressions1); 
 
    var traveler2messages2impressions2 = Impression(traveler2messages2.impressions.concept); 
    traveler2messages2impressions2.text = 'web'; 
    var traveler2messages2impressions2Place = countries.random().places.random(); 
    traveler2messages2impressions2.place = traveler2messages2impressions2Place; 
    traveler2messages2impressions2.message = traveler2messages2; 
    traveler2messages2.impressions.add(traveler2messages2impressions2); 
    traveler2messages2impressions2Place.impressions.add(traveler2messages2impressions2); 
 
    var traveler2followedBy1 = Following(traveler2.followedBy.concept); 
    traveler2followedBy1.updateRights = true; 
    var traveler2followedBy1FollowedBy = travelers.random(); 
    traveler2followedBy1.followedBy = traveler2followedBy1FollowedBy; 
    traveler2followedBy1.follows = traveler2; 
    traveler2.followedBy.add(traveler2followedBy1); 
    traveler2followedBy1FollowedBy.follows.add(traveler2followedBy1); 
 
    var traveler2followedBy2 = Following(traveler2.followedBy.concept); 
    traveler2followedBy2.updateRights = false; 
    var traveler2followedBy2FollowedBy = travelers.random(); 
    traveler2followedBy2.followedBy = traveler2followedBy2FollowedBy; 
    traveler2followedBy2.follows = traveler2; 
    traveler2.followedBy.add(traveler2followedBy2); 
    traveler2followedBy2FollowedBy.follows.add(traveler2followedBy2); 
 
    var traveler3 = Traveler(travelers.concept); 
    traveler3.email = 'understanding'; 
    traveler3.password = 'price'; 
    traveler3.firstName = 'price'; 
    traveler3.lastName = 'saving'; 
    traveler3.description = 'candy'; 
    travelers.add(traveler3); 
 
    var traveler3messages1 = Message(traveler3.messages.concept); 
    traveler3messages1.date = new DateTime.now(); 
    traveler3messages1.subject = 'big'; 
    traveler3messages1.text = 'done'; 
    traveler3messages1.traveler = traveler3; 
    traveler3.messages.add(traveler3messages1); 
 
    var traveler3messages1impressions1 = Impression(traveler3messages1.impressions.concept); 
    traveler3messages1impressions1.text = 'energy'; 
    var traveler3messages1impressions1Place = countries.random().places.random(); 
    traveler3messages1impressions1.place = traveler3messages1impressions1Place; 
    traveler3messages1impressions1.message = traveler3messages1; 
    traveler3messages1.impressions.add(traveler3messages1impressions1); 
    traveler3messages1impressions1Place.impressions.add(traveler3messages1impressions1); 
 
    var traveler3messages1impressions2 = Impression(traveler3messages1.impressions.concept); 
    traveler3messages1impressions2.text = 'seed'; 
    var traveler3messages1impressions2Place = countries.random().places.random(); 
    traveler3messages1impressions2.place = traveler3messages1impressions2Place; 
    traveler3messages1impressions2.message = traveler3messages1; 
    traveler3messages1.impressions.add(traveler3messages1impressions2); 
    traveler3messages1impressions2Place.impressions.add(traveler3messages1impressions2); 
 
    var traveler3messages2 = Message(traveler3.messages.concept); 
    traveler3messages2.date = new DateTime.now(); 
    traveler3messages2.subject = 'taxi'; 
    traveler3messages2.text = 'dog'; 
    traveler3messages2.traveler = traveler3; 
    traveler3.messages.add(traveler3messages2); 
 
    var traveler3messages2impressions1 = Impression(traveler3messages2.impressions.concept); 
    traveler3messages2impressions1.text = 'bank'; 
    var traveler3messages2impressions1Place = countries.random().places.random(); 
    traveler3messages2impressions1.place = traveler3messages2impressions1Place; 
    traveler3messages2impressions1.message = traveler3messages2; 
    traveler3messages2.impressions.add(traveler3messages2impressions1); 
    traveler3messages2impressions1Place.impressions.add(traveler3messages2impressions1); 
 
    var traveler3messages2impressions2 = Impression(traveler3messages2.impressions.concept); 
    traveler3messages2impressions2.text = 'body'; 
    var traveler3messages2impressions2Place = countries.random().places.random(); 
    traveler3messages2impressions2.place = traveler3messages2impressions2Place; 
    traveler3messages2impressions2.message = traveler3messages2; 
    traveler3messages2.impressions.add(traveler3messages2impressions2); 
    traveler3messages2impressions2Place.impressions.add(traveler3messages2impressions2); 
 
    var traveler3followedBy1 = Following(traveler3.followedBy.concept); 
    traveler3followedBy1.updateRights = true; 
    var traveler3followedBy1FollowedBy = travelers.random(); 
    traveler3followedBy1.followedBy = traveler3followedBy1FollowedBy; 
    traveler3followedBy1.follows = traveler3; 
    traveler3.followedBy.add(traveler3followedBy1); 
    traveler3followedBy1FollowedBy.follows.add(traveler3followedBy1); 
 
    var traveler3followedBy2 = Following(traveler3.followedBy.concept); 
    traveler3followedBy2.updateRights = true; 
    var traveler3followedBy2FollowedBy = travelers.random(); 
    traveler3followedBy2.followedBy = traveler3followedBy2FollowedBy; 
    traveler3followedBy2.follows = traveler3; 
    traveler3.followedBy.add(traveler3followedBy2); 
    traveler3followedBy2FollowedBy.follows.add(traveler3followedBy2); 
 
  } 
 
  void initCountries() { 
    var country1 = Country(countries.concept); 
    country1.name = 'sand'; 
    countries.add(country1); 
 
    var country1places1 = Place(country1.places.concept); 
    country1places1.name = 'vessel'; 
    country1places1.city = 'room'; 
    country1places1.description = 'productivity'; 
    country1places1.country = country1; 
    country1.places.add(country1places1); 
 
    var country1places1webLinks1 = WebLink(country1places1.webLinks.concept); 
    country1places1webLinks1.url = Uri.parse('http://benbleasdaleblogs.wordpress.com/2013/10/23/want-to-see-an-enzyme-check-inside-your-nose/'); 
    country1places1webLinks1.title = 'deep'; 
    country1places1webLinks1.description = 'word'; 
    country1places1webLinks1.place = country1places1; 
    country1places1.webLinks.add(country1places1webLinks1); 
 
    var country1places1webLinks2 = WebLink(country1places1.webLinks.concept); 
    country1places1webLinks2.url = Uri.parse('https://weworkremotely.com/'); 
    country1places1webLinks2.title = 'call'; 
    country1places1webLinks2.description = 'season'; 
    country1places1webLinks2.place = country1places1; 
    country1places1.webLinks.add(country1places1webLinks2); 
 
    var country1places2 = Place(country1.places.concept); 
    country1places2.name = 'bird'; 
    country1places2.city = 'algorithm'; 
    country1places2.description = 'point'; 
    country1places2.country = country1; 
    country1.places.add(country1places2); 
 
    var country1places2webLinks1 = WebLink(country1places2.webLinks.concept); 
    country1places2webLinks1.url = Uri.parse('http://www.washingtonpost.com/blogs/worldviews/wp/2013/11/07/a-stunning-map-of-depression-rates-around-the-world/'); 
    country1places2webLinks1.title = 'training'; 
    country1places2webLinks1.description = 'present'; 
    country1places2webLinks1.place = country1places2; 
    country1places2.webLinks.add(country1places2webLinks1); 
 
    var country1places2webLinks2 = WebLink(country1places2.webLinks.concept); 
    country1places2webLinks2.url = Uri.parse('http://bower.io/'); 
    country1places2webLinks2.title = 'deep'; 
    country1places2webLinks2.description = 'software'; 
    country1places2webLinks2.place = country1places2; 
    country1places2.webLinks.add(country1places2webLinks2); 
 
    var country2 = Country(countries.concept); 
    country2.name = 'nothingness'; 
    countries.add(country2); 
 
    var country2places1 = Place(country2.places.concept); 
    country2places1.name = 'training'; 
    country2places1.city = 'teacher'; 
    country2places1.description = 'agreement'; 
    country2places1.country = country2; 
    country2.places.add(country2places1); 
 
    var country2places1webLinks1 = WebLink(country2places1.webLinks.concept); 
    country2places1webLinks1.url = Uri.parse('https://www.hackerschool.com/blog/25-who-comes-to-hacker-school'); 
    country2places1webLinks1.title = 'left'; 
    country2places1webLinks1.description = 'discount'; 
    country2places1webLinks1.place = country2places1; 
    country2places1.webLinks.add(country2places1webLinks1); 
 
    var country2places1webLinks2 = WebLink(country2places1.webLinks.concept); 
    country2places1webLinks2.url = Uri.parse('http://tynan.com/transatlantic?'); 
    country2places1webLinks2.title = 'election'; 
    country2places1webLinks2.description = 'wheat'; 
    country2places1webLinks2.place = country2places1; 
    country2places1.webLinks.add(country2places1webLinks2); 
 
    var country2places2 = Place(country2.places.concept); 
    country2places2.name = 'navigation'; 
    country2places2.city = 'nothingness'; 
    country2places2.description = 'effort'; 
    country2places2.country = country2; 
    country2.places.add(country2places2); 
 
    var country2places2webLinks1 = WebLink(country2places2.webLinks.concept); 
    country2places2webLinks1.url = Uri.parse('http://www.linkedin.com/groups/Rich-Internet-Applications-Engineer-Dart-4124554.S.5804347538836303876'); 
    country2places2webLinks1.title = 'test'; 
    country2places2webLinks1.description = 'drink'; 
    country2places2webLinks1.place = country2places2; 
    country2places2.webLinks.add(country2places2webLinks1); 
 
    var country2places2webLinks2 = WebLink(country2places2.webLinks.concept); 
    country2places2webLinks2.url = Uri.parse('http://blog.dartwatch.com/p/community-dart-packages-and-examples.html'); 
    country2places2webLinks2.title = 'college'; 
    country2places2webLinks2.description = 'oil'; 
    country2places2webLinks2.place = country2places2; 
    country2places2.webLinks.add(country2places2webLinks2); 
 
    var country3 = Country(countries.concept); 
    country3.name = 'election'; 
    countries.add(country3); 
 
    var country3places1 = Place(country3.places.concept); 
    country3places1.name = 'parfem'; 
    country3places1.city = 'tag'; 
    country3places1.description = 'brave'; 
    country3places1.country = country3; 
    country3.places.add(country3places1); 
 
    var country3places1webLinks1 = WebLink(country3places1.webLinks.concept); 
    country3places1webLinks1.url = Uri.parse('http://www.reverbnation.com/'); 
    country3places1webLinks1.title = 'text'; 
    country3places1webLinks1.description = 'sand'; 
    country3places1webLinks1.place = country3places1; 
    country3places1.webLinks.add(country3places1webLinks1); 
 
    var country3places1webLinks2 = WebLink(country3places1.webLinks.concept); 
    country3places1webLinks2.url = Uri.parse('https://medium.com/futures-exchange/3be652b8eccb'); 
    country3places1webLinks2.title = 'distance'; 
    country3places1webLinks2.description = 'time'; 
    country3places1webLinks2.place = country3places1; 
    country3places1.webLinks.add(country3places1webLinks2); 
 
    var country3places2 = Place(country3.places.concept); 
    country3places2.name = 'cardboard'; 
    country3places2.city = 'camping'; 
    country3places2.description = 'river'; 
    country3places2.country = country3; 
    country3.places.add(country3places2); 
 
    var country3places2webLinks1 = WebLink(country3places2.webLinks.concept); 
    country3places2webLinks1.url = Uri.parse('http://toxicdump.org/stuff/FourierToy.swf'); 
    country3places2webLinks1.title = 'smog'; 
    country3places2webLinks1.description = 'observation'; 
    country3places2webLinks1.place = country3places2; 
    country3places2.webLinks.add(country3places2webLinks1); 
 
    var country3places2webLinks2 = WebLink(country3places2.webLinks.concept); 
    country3places2webLinks2.url = Uri.parse('http://www.houseplans.com/'); 
    country3places2webLinks2.title = 'tent'; 
    country3places2webLinks2.description = 'web'; 
    country3places2webLinks2.place = country3places2; 
    country3places2.webLinks.add(country3places2webLinks2); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
