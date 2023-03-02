 
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
    initTravelers(); 
    initCountries(); 
  } 
 
  void initTravelers() {
    var traveler1 = Traveler(travelers.concept); 
    traveler1.email = 'authority'; 
    traveler1.password = 'knowledge'; 
    traveler1.firstName = 'knowledge'; 
    traveler1.lastName = 'entrance'; 
    traveler1.description = 'vessel'; 
    travelers.add(traveler1); 
 
    var traveler1messages1 = Message(traveler1.messages.concept);
    traveler1.messages.add(traveler1messages1);

    traveler1messages1.date = new DateTime.now();
    traveler1messages1.subject = 'line'; 
    traveler1messages1.text = 'lunch'; 
    traveler1messages1.traveler = traveler1; 

    var traveler1messages1impressions1 = Impression(traveler1messages1.impressions.concept); 
    traveler1messages1impressions1.text = 'boat'; 
    var traveler1messages1impressions1Place = countries.single.places.random();
    traveler1messages1impressions1.place = traveler1messages1impressions1Place; 
    traveler1messages1impressions1.message = traveler1messages1; 
    traveler1messages1.impressions.add(traveler1messages1impressions1); 
    traveler1messages1impressions1Place.impressions.add(traveler1messages1impressions1); 
 
    var traveler1messages1impressions2 = Impression(traveler1messages1.impressions.concept); 
    traveler1messages1impressions2.text = 'chemist'; 
    var traveler1messages1impressions2Place = countries.random().places.random();
    traveler1messages1impressions2.place = traveler1messages1impressions2Place; 
    traveler1messages1impressions2.message = traveler1messages1; 
    traveler1messages1.impressions.add(traveler1messages1impressions2); 
    traveler1messages1impressions2Place.impressions.add(traveler1messages1impressions2); 
 
    var traveler1messages2 = Message(traveler1.messages.concept); 
    traveler1messages2.date = new DateTime.now(); 
    traveler1messages2.subject = 'candy'; 
    traveler1messages2.text = 'cash'; 
    traveler1messages2.traveler = traveler1; 
    traveler1.messages.add(traveler1messages2); 
 
    var traveler1messages2impressions1 = Impression(traveler1messages2.impressions.concept); 
    traveler1messages2impressions1.text = 'knowledge'; 
    var traveler1messages2impressions1Place = countries.random().places.random();
    traveler1messages2impressions1.place = traveler1messages2impressions1Place; 
    traveler1messages2impressions1.message = traveler1messages2; 
    traveler1messages2.impressions.add(traveler1messages2impressions1); 
    traveler1messages2impressions1Place.impressions.add(traveler1messages2impressions1); 
 
    var traveler1messages2impressions2 = Impression(traveler1messages2.impressions.concept); 
    traveler1messages2impressions2.text = 'cloud'; 
    var traveler1messages2impressions2Place = countries.random().places.random();
    traveler1messages2impressions2.place = traveler1messages2impressions2Place; 
    traveler1messages2impressions2.message = traveler1messages2; 
    traveler1messages2.impressions.add(traveler1messages2impressions2); 
    traveler1messages2impressions2Place.impressions.add(traveler1messages2impressions2); 
 
    var traveler1followedBy1 = Following(traveler1.followedBy.concept); 
    traveler1followedBy1.updateRights = false; 
    var traveler1followedBy1FollowedBy = travelers.random(); 
    traveler1followedBy1.followedBy = traveler1followedBy1FollowedBy; 
    traveler1followedBy1.follows = traveler1; 
    traveler1.followedBy.add(traveler1followedBy1); 
    traveler1followedBy1FollowedBy.follows.add(traveler1followedBy1); 
 
    var traveler1followedBy2 = Following(traveler1.followedBy.concept); 
    traveler1followedBy2.updateRights = true; 
    var traveler1followedBy2FollowedBy = travelers.random(); 
    traveler1followedBy2.followedBy = traveler1followedBy2FollowedBy; 
    traveler1followedBy2.follows = traveler1; 
    traveler1.followedBy.add(traveler1followedBy2); 
    traveler1followedBy2FollowedBy.follows.add(traveler1followedBy2); 
 
    var traveler2 = Traveler(travelers.concept); 
    traveler2.email = 'selfdo'; 
    traveler2.password = 'redo'; 
    traveler2.firstName = 'vessel'; 
    traveler2.lastName = 'tree'; 
    traveler2.description = 'train'; 
    travelers.add(traveler2); 
 
    var traveler2messages1 = Message(traveler2.messages.concept); 
    traveler2messages1.date = new DateTime.now(); 
    traveler2messages1.subject = 'school'; 
    traveler2messages1.text = 'girl'; 
    traveler2messages1.traveler = traveler2; 
    traveler2.messages.add(traveler2messages1); 
 
    var traveler2messages1impressions1 = Impression(traveler2messages1.impressions.concept); 
    traveler2messages1impressions1.text = 'crisis'; 
    var traveler2messages1impressions1Place = countries.random().places.random();
    traveler2messages1impressions1.place = traveler2messages1impressions1Place; 
    traveler2messages1impressions1.message = traveler2messages1; 
    traveler2messages1.impressions.add(traveler2messages1impressions1); 
    traveler2messages1impressions1Place.impressions.add(traveler2messages1impressions1); 
 
    var traveler2messages1impressions2 = Impression(traveler2messages1.impressions.concept); 
    traveler2messages1impressions2.text = 'paper'; 
    var traveler2messages1impressions2Place = countries.random().places.random();
    traveler2messages1impressions2.place = traveler2messages1impressions2Place; 
    traveler2messages1impressions2.message = traveler2messages1; 
    traveler2messages1.impressions.add(traveler2messages1impressions2); 
    traveler2messages1impressions2Place.impressions.add(traveler2messages1impressions2); 
 
    var traveler2messages2 = Message(traveler2.messages.concept); 
    traveler2messages2.date = new DateTime.now(); 
    traveler2messages2.subject = 'undo'; 
    traveler2messages2.text = 'beach'; 
    traveler2messages2.traveler = traveler2; 
    traveler2.messages.add(traveler2messages2); 
 
    var traveler2messages2impressions1 = Impression(traveler2messages2.impressions.concept); 
    traveler2messages2impressions1.text = 'heating'; 
    var traveler2messages2impressions1Place = countries.random().places.random();
    traveler2messages2impressions1.place = traveler2messages2impressions1Place; 
    traveler2messages2impressions1.message = traveler2messages2; 
    traveler2messages2.impressions.add(traveler2messages2impressions1); 
    traveler2messages2impressions1Place.impressions.add(traveler2messages2impressions1); 
 
    var traveler2messages2impressions2 = Impression(traveler2messages2.impressions.concept); 
    traveler2messages2impressions2.text = 'tall'; 
    var traveler2messages2impressions2Place = countries.random().places.random();
    traveler2messages2impressions2.place = traveler2messages2impressions2Place; 
    traveler2messages2impressions2.message = traveler2messages2; 
    traveler2messages2.impressions.add(traveler2messages2impressions2); 
    traveler2messages2impressions2Place.impressions.add(traveler2messages2impressions2); 
 
    var traveler2followedBy1 = Following(traveler2.followedBy.concept); 
    traveler2followedBy1.updateRights = false; 
    var traveler2followedBy1FollowedBy = travelers.random(); 
    traveler2followedBy1.followedBy = traveler2followedBy1FollowedBy; 
    traveler2followedBy1.follows = traveler2; 
    traveler2.followedBy.add(traveler2followedBy1); 
    traveler2followedBy1FollowedBy.follows.add(traveler2followedBy1); 
 
    var traveler2followedBy2 = Following(traveler2.followedBy.concept); 
    traveler2followedBy2.updateRights = true; 
    var traveler2followedBy2FollowedBy = travelers.random(); 
    traveler2followedBy2.followedBy = traveler2followedBy2FollowedBy; 
    traveler2followedBy2.follows = traveler2; 
    traveler2.followedBy.add(traveler2followedBy2); 
    traveler2followedBy2FollowedBy.follows.add(traveler2followedBy2); 
 
    var traveler3 = Traveler(travelers.concept); 
    traveler3.email = 'nothingness'; 
    traveler3.password = 'architecture'; 
    traveler3.firstName = 'teaching'; 
    traveler3.lastName = 'answer'; 
    traveler3.description = 'cloud'; 
    travelers.add(traveler3); 
 
    var traveler3messages1 = Message(traveler3.messages.concept); 
    traveler3messages1.date = new DateTime.now(); 
    traveler3messages1.subject = 'thing'; 
    traveler3messages1.text = 'entrance'; 
    traveler3messages1.traveler = traveler3; 
    traveler3.messages.add(traveler3messages1); 
 
    var traveler3messages1impressions1 = Impression(traveler3messages1.impressions.concept); 
    traveler3messages1impressions1.text = 'big'; 
    var traveler3messages1impressions1Place = countries.random().places.random();
    traveler3messages1impressions1.place = traveler3messages1impressions1Place; 
    traveler3messages1impressions1.message = traveler3messages1; 
    traveler3messages1.impressions.add(traveler3messages1impressions1); 
    traveler3messages1impressions1Place.impressions.add(traveler3messages1impressions1); 
 
    var traveler3messages1impressions2 = Impression(traveler3messages1.impressions.concept); 
    traveler3messages1impressions2.text = 'hospital'; 
    var traveler3messages1impressions2Place = countries.random().places.random();
    traveler3messages1impressions2.place = traveler3messages1impressions2Place; 
    traveler3messages1impressions2.message = traveler3messages1; 
    traveler3messages1.impressions.add(traveler3messages1impressions2); 
    traveler3messages1impressions2Place.impressions.add(traveler3messages1impressions2); 
 
    var traveler3messages2 = Message(traveler3.messages.concept); 
    traveler3messages2.date = new DateTime.now(); 
    traveler3messages2.subject = 'unit'; 
    traveler3messages2.text = 'universe'; 
    traveler3messages2.traveler = traveler3; 
    traveler3.messages.add(traveler3messages2); 
 
    var traveler3messages2impressions1 = Impression(traveler3messages2.impressions.concept); 
    traveler3messages2impressions1.text = 'autobus'; 
    var traveler3messages2impressions1Place = countries.random().places.random();
    traveler3messages2impressions1.place = traveler3messages2impressions1Place; 
    traveler3messages2impressions1.message = traveler3messages2; 
    traveler3messages2.impressions.add(traveler3messages2impressions1); 
    traveler3messages2impressions1Place.impressions.add(traveler3messages2impressions1); 
 
    var traveler3messages2impressions2 = Impression(traveler3messages2.impressions.concept); 
    traveler3messages2impressions2.text = 'time'; 
    var traveler3messages2impressions2Place = countries.random().places.random();
    traveler3messages2impressions2.place = traveler3messages2impressions2Place; 
    traveler3messages2impressions2.message = traveler3messages2; 
    traveler3messages2.impressions.add(traveler3messages2impressions2); 
    traveler3messages2impressions2Place.impressions.add(traveler3messages2impressions2); 
 
    var traveler3followedBy1 = Following(traveler3.followedBy.concept); 
    traveler3followedBy1.updateRights = false; 
    var traveler3followedBy1FollowedBy = travelers.random(); 
    traveler3followedBy1.followedBy = traveler3followedBy1FollowedBy; 
    traveler3followedBy1.follows = traveler3; 
    traveler3.followedBy.add(traveler3followedBy1); 
    traveler3followedBy1FollowedBy.follows.add(traveler3followedBy1); 
 
    var traveler3followedBy2 = Following(traveler3.followedBy.concept); 
    traveler3followedBy2.updateRights = false; 
    var traveler3followedBy2FollowedBy = travelers.random(); 
    traveler3followedBy2.followedBy = traveler3followedBy2FollowedBy; 
    traveler3followedBy2.follows = traveler3; 
    traveler3.followedBy.add(traveler3followedBy2); 
    traveler3followedBy2FollowedBy.follows.add(traveler3followedBy2); 
 
  } 
 
  void initCountries() { 
    var country1 = Country(countries.concept); 
    country1.name = 'highway'; 
    countries.add(country1); 
 
    var country1places1 = Place(country1.places.concept); 
    country1places1.name = 'selfie'; 
    country1places1.city = 'camping'; 
    country1places1.description = 'winter'; 
    country1places1.country = country1; 
    country1.places.add(country1places1); 
 
    var country1places1webLinks1 = WebLink(country1places1.webLinks.concept); 
    country1places1webLinks1.url = Uri.parse('http://www.ed2go.com/'); 
    country1places1webLinks1.title = 'phone'; 
    country1places1webLinks1.description = 'celebration'; 
    country1places1webLinks1.place = country1places1; 
    country1places1.webLinks.add(country1places1webLinks1); 
 
    var country1places1webLinks2 = WebLink(country1places1.webLinks.concept); 
    country1places1webLinks2.url = Uri.parse('http://news.ycombinator.com/item?id=4530217'); 
    country1places1webLinks2.title = 'capacity'; 
    country1places1webLinks2.description = 'objective'; 
    country1places1webLinks2.place = country1places1; 
    country1places1.webLinks.add(country1places1webLinks2); 
 
    var country1places2 = Place(country1.places.concept); 
    country1places2.name = 'bank'; 
    country1places2.city = 'hunting'; 
    country1places2.description = 'teaching'; 
    country1places2.country = country1; 
    country1.places.add(country1places2); 
 
    var country1places2webLinks1 = WebLink(country1places2.webLinks.concept); 
    country1places2webLinks1.url = Uri.parse('http://tinyhouseblog.com/yurts/tiny-spiritual-retreat-cabins/'); 
    country1places2webLinks1.title = 'team'; 
    country1places2webLinks1.description = 'ocean'; 
    country1places2webLinks1.place = country1places2; 
    country1places2.webLinks.add(country1places2webLinks1); 
 
    var country1places2webLinks2 = WebLink(country1places2.webLinks.concept); 
    country1places2webLinks2.url = Uri.parse('http://blog.codeship.io/2013/10/24/codeship-dart-support.html'); 
    country1places2webLinks2.title = 'hat'; 
    country1places2webLinks2.description = 'cloud'; 
    country1places2webLinks2.place = country1places2; 
    country1places2.webLinks.add(country1places2webLinks2); 
 
    var country2 = Country(countries.concept); 
    country2.name = 'undo'; 
    countries.add(country2); 
 
    var country2places1 = Place(country2.places.concept); 
    country2places1.name = 'river'; 
    country2places1.city = 'letter'; 
    country2places1.description = 'capacity'; 
    country2places1.country = country2; 
    country2.places.add(country2places1); 
 
    var country2places1webLinks1 = WebLink(country2places1.webLinks.concept); 
    country2places1webLinks1.url = Uri.parse('http://www.slate.com/blogs/browbeat/2013/10/24/quitting_academic_jobs_professor_zachary_ernst_and_other_leaving_tenure.html'); 
    country2places1webLinks1.title = 'home'; 
    country2places1webLinks1.description = 'parfem'; 
    country2places1webLinks1.place = country2places1; 
    country2places1.webLinks.add(country2places1webLinks1); 
 
    var country2places1webLinks2 = WebLink(country2places1.webLinks.concept); 
    country2places1webLinks2.url = Uri.parse('http://pcottle.github.io/learnGitBranching/'); 
    country2places1webLinks2.title = 'professor'; 
    country2places1webLinks2.description = 'tape'; 
    country2places1webLinks2.place = country2places1; 
    country2places1.webLinks.add(country2places1webLinks2); 
 
    var country2places2 = Place(country2.places.concept); 
    country2places2.name = 'test'; 
    country2places2.city = 'craving'; 
    country2places2.description = 'highway'; 
    country2places2.country = country2; 
    country2.places.add(country2places2); 
 
    var country2places2webLinks1 = WebLink(country2places2.webLinks.concept); 
    country2places2webLinks1.url = Uri.parse('http://tynan.com/cruisework'); 
    country2places2webLinks1.title = 'energy'; 
    country2places2webLinks1.description = 'beginning'; 
    country2places2webLinks1.place = country2places2; 
    country2places2.webLinks.add(country2places2webLinks1); 
 
    var country2places2webLinks2 = WebLink(country2places2.webLinks.concept); 
    country2places2webLinks2.url = Uri.parse('http://narrative.ly/pieces-of-mind/nick-brown-smelled-bull/'); 
    country2places2webLinks2.title = 'finger'; 
    country2places2webLinks2.description = 'knowledge'; 
    country2places2webLinks2.place = country2places2; 
    country2places2.webLinks.add(country2places2webLinks2); 
 
    var country3 = Country(countries.concept); 
    country3.name = 'cable'; 
    countries.add(country3); 
 
    var country3places1 = Place(country3.places.concept); 
    country3places1.name = 'organization'; 
    country3places1.city = 'letter'; 
    country3places1.description = 'fascination'; 
    country3places1.country = country3; 
    country3.places.add(country3places1); 
 
    var country3places1webLinks1 = WebLink(country3places1.webLinks.concept); 
    country3places1webLinks1.url = Uri.parse('http://www.dartlang.org/slides/2012/06/io12/Bullseye-Your-first-Dart-app-Codelab-GoogleIO2012.pdf'); 
    country3places1webLinks1.title = 'girl'; 
    country3places1webLinks1.description = 'edition'; 
    country3places1webLinks1.place = country3places1; 
    country3places1.webLinks.add(country3places1webLinks1); 
 
    var country3places1webLinks2 = WebLink(country3places1.webLinks.concept); 
    country3places1webLinks2.url = Uri.parse('http://pub.dartlang.org/'); 
    country3places1webLinks2.title = 'kids'; 
    country3places1webLinks2.description = 'park'; 
    country3places1webLinks2.place = country3places1; 
    country3places1.webLinks.add(country3places1webLinks2); 
 
    var country3places2 = Place(country3.places.concept); 
    country3places2.name = 'beans'; 
    country3places2.city = 'effort'; 
    country3places2.description = 'paper'; 
    country3places2.country = country3; 
    country3.places.add(country3places2); 
 
    var country3places2webLinks1 = WebLink(country3places2.webLinks.concept); 
    country3places2webLinks1.url = Uri.parse('https://groups.google.com/a/dartlang.org/forum/?fromgroups#!forum/misc'); 
    country3places2webLinks1.title = 'beer'; 
    country3places2webLinks1.description = 'interest'; 
    country3places2webLinks1.place = country3places2; 
    country3places2.webLinks.add(country3places2webLinks1); 
 
    var country3places2webLinks2 = WebLink(country3places2.webLinks.concept); 
    country3places2webLinks2.url = Uri.parse('https://blogs.oracle.com/geertjan/entry/dart_and_netbeans_ide_7'); 
    country3places2webLinks2.title = 'time'; 
    country3places2webLinks2.description = 'guest'; 
    country3places2webLinks2.place = country3places2; 
    country3places2.webLinks.add(country3places2webLinks2); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
