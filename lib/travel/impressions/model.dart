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
    traveler1.email = 'paper';
    traveler1.password = 'body';
    traveler1.firstName = 'architecture';
    traveler1.lastName = 'small';
    traveler1.description = 'smog';
    travelers.add(traveler1);

    var traveler1messages1 = Message(traveler1.messages.concept);
    traveler1messages1.date = new DateTime.now();
    traveler1messages1.subject = 'advisor';
    traveler1messages1.text = 'enquiry';
    traveler1messages1.traveler = traveler1;
    traveler1.messages.add(traveler1messages1);

    var traveler1messages1impressions1 =
        Impression(traveler1messages1.impressions.concept);
    traveler1messages1impressions1.text = 'algorithm';
    var traveler1messages1impressions1Place =
        countries.random().places.random();
    traveler1messages1impressions1.place = traveler1messages1impressions1Place;
    traveler1messages1impressions1.message = traveler1messages1;
    traveler1messages1.impressions.add(traveler1messages1impressions1);
    traveler1messages1impressions1Place.impressions
        .add(traveler1messages1impressions1);

    var traveler1messages1impressions2 =
        Impression(traveler1messages1.impressions.concept);
    traveler1messages1impressions2.text = 'cable';
    var traveler1messages1impressions2Place =
        countries.random().places.random();
    traveler1messages1impressions2.place = traveler1messages1impressions2Place;
    traveler1messages1impressions2.message = traveler1messages1;
    traveler1messages1.impressions.add(traveler1messages1impressions2);
    traveler1messages1impressions2Place.impressions
        .add(traveler1messages1impressions2);

    var traveler1messages2 = Message(traveler1.messages.concept);
    traveler1messages2.date = new DateTime.now();
    traveler1messages2.subject = 'camping';
    traveler1messages2.text = 'table';
    traveler1messages2.traveler = traveler1;
    traveler1.messages.add(traveler1messages2);

    var traveler1messages2impressions1 =
        Impression(traveler1messages2.impressions.concept);
    traveler1messages2impressions1.text = 'house';
    var traveler1messages2impressions1Place =
        countries.random().places.random();
    traveler1messages2impressions1.place = traveler1messages2impressions1Place;
    traveler1messages2impressions1.message = traveler1messages2;
    traveler1messages2.impressions.add(traveler1messages2impressions1);
    traveler1messages2impressions1Place.impressions
        .add(traveler1messages2impressions1);

    var traveler1messages2impressions2 =
        Impression(traveler1messages2.impressions.concept);
    traveler1messages2impressions2.text = 'celebration';
    var traveler1messages2impressions2Place =
        countries.random().places.random();
    traveler1messages2impressions2.place = traveler1messages2impressions2Place;
    traveler1messages2impressions2.message = traveler1messages2;
    traveler1messages2.impressions.add(traveler1messages2impressions2);
    traveler1messages2impressions2Place.impressions
        .add(traveler1messages2impressions2);

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
    traveler2.email = 'river';
    traveler2.password = 'autobus';
    traveler2.firstName = 'feeling';
    traveler2.lastName = 'book';
    traveler2.description = 'celebration';
    travelers.add(traveler2);

    var traveler2messages1 = Message(traveler2.messages.concept);
    traveler2messages1.date = new DateTime.now();
    traveler2messages1.subject = 'architecture';
    traveler2messages1.text = 'architecture';
    traveler2messages1.traveler = traveler2;
    traveler2.messages.add(traveler2messages1);

    var traveler2messages1impressions1 =
        Impression(traveler2messages1.impressions.concept);
    traveler2messages1impressions1.text = 'energy';
    var traveler2messages1impressions1Place =
        countries.random().places.random();
    traveler2messages1impressions1.place = traveler2messages1impressions1Place;
    traveler2messages1impressions1.message = traveler2messages1;
    traveler2messages1.impressions.add(traveler2messages1impressions1);
    traveler2messages1impressions1Place.impressions
        .add(traveler2messages1impressions1);

    var traveler2messages1impressions2 =
        Impression(traveler2messages1.impressions.concept);
    traveler2messages1impressions2.text = 'beginning';
    var traveler2messages1impressions2Place =
        countries.random().places.random();
    traveler2messages1impressions2.place = traveler2messages1impressions2Place;
    traveler2messages1impressions2.message = traveler2messages1;
    traveler2messages1.impressions.add(traveler2messages1impressions2);
    traveler2messages1impressions2Place.impressions
        .add(traveler2messages1impressions2);

    var traveler2messages2 = Message(traveler2.messages.concept);
    traveler2messages2.date = new DateTime.now();
    traveler2messages2.subject = 'smog';
    traveler2messages2.text = 'call';
    traveler2messages2.traveler = traveler2;
    traveler2.messages.add(traveler2messages2);

    var traveler2messages2impressions1 =
        Impression(traveler2messages2.impressions.concept);
    traveler2messages2impressions1.text = 'measuremewnt';
    var traveler2messages2impressions1Place =
        countries.random().places.random();
    traveler2messages2impressions1.place = traveler2messages2impressions1Place;
    traveler2messages2impressions1.message = traveler2messages2;
    traveler2messages2.impressions.add(traveler2messages2impressions1);
    traveler2messages2impressions1Place.impressions
        .add(traveler2messages2impressions1);

    var traveler2messages2impressions2 =
        Impression(traveler2messages2.impressions.concept);
    traveler2messages2impressions2.text = 'privacy';
    var traveler2messages2impressions2Place =
        countries.random().places.random();
    traveler2messages2impressions2.place = traveler2messages2impressions2Place;
    traveler2messages2impressions2.message = traveler2messages2;
    traveler2messages2.impressions.add(traveler2messages2impressions2);
    traveler2messages2impressions2Place.impressions
        .add(traveler2messages2impressions2);

    var traveler2followedBy1 = Following(traveler2.followedBy.concept);
    traveler2followedBy1.updateRights = false;
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
    traveler3.email = 'secretary';
    traveler3.password = 'horse';
    traveler3.firstName = 'candy';
    traveler3.lastName = 'election';
    traveler3.description = 'university';
    travelers.add(traveler3);

    var traveler3messages1 = Message(traveler3.messages.concept);
    traveler3messages1.date = new DateTime.now();
    traveler3messages1.subject = 'girl';
    traveler3messages1.text = 'service';
    traveler3messages1.traveler = traveler3;
    traveler3.messages.add(traveler3messages1);

    var traveler3messages1impressions1 =
        Impression(traveler3messages1.impressions.concept);
    traveler3messages1impressions1.text = 'hell';
    var traveler3messages1impressions1Place =
        countries.random().places.random();
    traveler3messages1impressions1.place = traveler3messages1impressions1Place;
    traveler3messages1impressions1.message = traveler3messages1;
    traveler3messages1.impressions.add(traveler3messages1impressions1);
    traveler3messages1impressions1Place.impressions
        .add(traveler3messages1impressions1);

    var traveler3messages1impressions2 =
        Impression(traveler3messages1.impressions.concept);
    traveler3messages1impressions2.text = 'mile';
    var traveler3messages1impressions2Place =
        countries.random().places.random();
    traveler3messages1impressions2.place = traveler3messages1impressions2Place;
    traveler3messages1impressions2.message = traveler3messages1;
    traveler3messages1.impressions.add(traveler3messages1impressions2);
    traveler3messages1impressions2Place.impressions
        .add(traveler3messages1impressions2);

    var traveler3messages2 = Message(traveler3.messages.concept);
    traveler3messages2.date = new DateTime.now();
    traveler3messages2.subject = 'discount';
    traveler3messages2.text = 'output';
    traveler3messages2.traveler = traveler3;
    traveler3.messages.add(traveler3messages2);

    var traveler3messages2impressions1 =
        Impression(traveler3messages2.impressions.concept);
    traveler3messages2impressions1.text = 'tall';
    var traveler3messages2impressions1Place =
        countries.random().places.random();
    traveler3messages2impressions1.place = traveler3messages2impressions1Place;
    traveler3messages2impressions1.message = traveler3messages2;
    traveler3messages2.impressions.add(traveler3messages2impressions1);
    traveler3messages2impressions1Place.impressions
        .add(traveler3messages2impressions1);

    var traveler3messages2impressions2 =
        Impression(traveler3messages2.impressions.concept);
    traveler3messages2impressions2.text = 'productivity';
    var traveler3messages2impressions2Place =
        countries.random().places.random();
    traveler3messages2impressions2.place = traveler3messages2impressions2Place;
    traveler3messages2impressions2.message = traveler3messages2;
    traveler3messages2.impressions.add(traveler3messages2impressions2);
    traveler3messages2impressions2Place.impressions
        .add(traveler3messages2impressions2);

    var traveler3followedBy1 = Following(traveler3.followedBy.concept);
    traveler3followedBy1.updateRights = true;
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
    country1.name = 'circle';
    countries.add(country1);

    var country1places1 = Place(country1.places.concept);
    country1places1.name = 'mile';
    country1places1.city = 'autobus';
    country1places1.description = 'consciousness';
    country1places1.country = country1;
    country1.places.add(country1places1);

    var country1places1webLinks1 = WebLink(country1places1.webLinks.concept);
    country1places1webLinks1.url = Uri.parse(
        'http://blog.dartwatch.com/p/community-dart-packages-and-examples.html');
    country1places1webLinks1.title = 'done';
    country1places1webLinks1.description = 'concern';
    country1places1webLinks1.place = country1places1;
    country1places1.webLinks.add(country1places1webLinks1);

    var country1places1webLinks2 = WebLink(country1places1.webLinks.concept);
    country1places1webLinks2.url = Uri.parse(
        'http://www.drdobbs.com/open-source/dart-build-html5-apps-fast/240005631');
    country1places1webLinks2.title = 'web';
    country1places1webLinks2.description = 'university';
    country1places1webLinks2.place = country1places1;
    country1places1.webLinks.add(country1places1webLinks2);

    var country1places2 = Place(country1.places.concept);
    country1places2.name = 'east';
    country1places2.city = 'sun';
    country1places2.description = 'executive';
    country1places2.country = country1;
    country1.places.add(country1places2);

    var country1places2webLinks1 = WebLink(country1places2.webLinks.concept);
    country1places2webLinks1.url = Uri.parse(
        'http://www.theguardian.com/higher-education-network/blog/2013/oct/21/open-access-myths-peter-suber-harvard');
    country1places2webLinks1.title = 'camping';
    country1places2webLinks1.description = 'debt';
    country1places2webLinks1.place = country1places2;
    country1places2.webLinks.add(country1places2webLinks1);

    var country1places2webLinks2 = WebLink(country1places2.webLinks.concept);
    country1places2webLinks2.url = Uri.parse(
        'http://news.dartlang.org/2013/11/angular-announces-angulardart.html');
    country1places2webLinks2.title = 'software';
    country1places2webLinks2.description = 'distance';
    country1places2webLinks2.place = country1places2;
    country1places2.webLinks.add(country1places2webLinks2);

    var country2 = Country(countries.concept);
    country2.name = 'children';
    countries.add(country2);

    var country2places1 = Place(country2.places.concept);
    country2places1.name = 'yellow';
    country2places1.city = 'element';
    country2places1.description = 'hell';
    country2places1.country = country2;
    country2.places.add(country2places1);

    var country2places1webLinks1 = WebLink(country2places1.webLinks.concept);
    country2places1webLinks1.url = Uri.parse(
        'http://www.itworld.com/cloud-computing/379566/don-t-go-programming-if-you-don-t-have-good-thesaurus');
    country2places1webLinks1.title = 'house';
    country2places1webLinks1.description = 'chairman';
    country2places1webLinks1.place = country2places1;
    country2places1.webLinks.add(country2places1webLinks1);

    var country2places1webLinks2 = WebLink(country2places1.webLinks.concept);
    country2places1webLinks2.url = Uri.parse(
        'https://github.com/sethladd/dart-polymer-dart-examples/tree/master/web/custom_element_insert_into_light_dom');
    country2places1webLinks2.title = 'health';
    country2places1webLinks2.description = 'selfdo';
    country2places1webLinks2.place = country2places1;
    country2places1.webLinks.add(country2places1webLinks2);

    var country2places2 = Place(country2.places.concept);
    country2places2.name = 'girl';
    country2places2.city = 'account';
    country2places2.description = 'ship';
    country2places2.country = country2;
    country2.places.add(country2places2);

    var country2places2webLinks1 = WebLink(country2places2.webLinks.concept);
    country2places2webLinks1.url =
        Uri.parse('http://www.pathfinderinternational.net/ec-report/');
    country2places2webLinks1.title = 'home';
    country2places2webLinks1.description = 'health';
    country2places2webLinks1.place = country2places2;
    country2places2.webLinks.add(country2places2webLinks1);

    var country2places2webLinks2 = WebLink(country2places2.webLinks.concept);
    country2places2webLinks2.url =
        Uri.parse('https://github.com/vadimtsushko/angular_objectory_demo');
    country2places2webLinks2.title = 'dinner';
    country2places2webLinks2.description = 'time';
    country2places2webLinks2.place = country2places2;
    country2places2.webLinks.add(country2places2webLinks2);

    var country3 = Country(countries.concept);
    country3.name = 'effort';
    countries.add(country3);

    var country3places1 = Place(country3.places.concept);
    country3places1.name = 'theme';
    country3places1.city = 'future';
    country3places1.description = 'beer';
    country3places1.country = country3;
    country3.places.add(country3places1);

    var country3places1webLinks1 = WebLink(country3places1.webLinks.concept);
    country3places1webLinks1.url =
        Uri.parse('https://medium.com/understandings-epiphanies/2bed2dd4ed78');
    country3places1webLinks1.title = 'accident';
    country3places1webLinks1.description = 'left';
    country3places1webLinks1.place = country3places1;
    country3places1.webLinks.add(country3places1webLinks1);

    var country3places1webLinks2 = WebLink(country3places1.webLinks.concept);
    country3places1webLinks2.url =
        Uri.parse('http://www.dartlang.org/articles/style-guide/');
    country3places1webLinks2.title = 'pub';
    country3places1webLinks2.description = 'employer';
    country3places1webLinks2.place = country3places1;
    country3places1.webLinks.add(country3places1webLinks2);

    var country3places2 = Place(country3.places.concept);
    country3places2.name = 'capacity';
    country3places2.city = 'authority';
    country3places2.description = 'milk';
    country3places2.country = country3;
    country3.places.add(country3places2);

    var country3places2webLinks1 = WebLink(country3places2.webLinks.concept);
    country3places2webLinks1.url = Uri.parse(
        'http://www.nytimes.com/2013/11/03/education/edlife/finding-life-after-academia-and-not-feeling-bad-about-it.html');
    country3places2webLinks1.title = 'bird';
    country3places2webLinks1.description = 'oil';
    country3places2webLinks1.place = country3places2;
    country3places2.webLinks.add(country3places2webLinks1);

    var country3places2webLinks2 = WebLink(country3places2.webLinks.concept);
    country3places2webLinks2.url = Uri.parse('https://github.com/dart-lang');
    country3places2webLinks2.title = 'highway';
    country3places2webLinks2.description = 'ticket';
    country3places2webLinks2.place = country3places2;
    country3places2.webLinks.add(country3places2webLinks2);
  }

// added after code gen - begin

// added after code gen - end
}
