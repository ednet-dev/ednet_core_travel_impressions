 
// test/travel/impressions/travel_impressions_country_test.dart 
 
import "package:test/test.dart"; 
import "package:ednet_core/ednet_core.dart"; 
import "package:travel_impressions/travel_impressions.dart"; 
 
void testTravelImpressionsCountries( 
    TravelDomain travelDomain, ImpressionsModel impressionsModel, Countries countries) { 
  DomainSession session; 
  group("Testing Travel.Impressions.Country", () { 
    session = travelDomain.newSession();  
    setUp(() { 
      impressionsModel.init(); 
    }); 
    tearDown(() { 
      impressionsModel.clear(); 
    }); 
 
    test("Not empty model", () { 
      expect(impressionsModel.isEmpty, isFalse); 
      expect(countries.isEmpty, isFalse); 
    }); 
 
    test("Empty model", () { 
      impressionsModel.clear(); 
      expect(impressionsModel.isEmpty, isTrue); 
      expect(countries.isEmpty, isTrue); 
      expect(countries.exceptions.isEmpty, isTrue); 
    }); 
 
    test("From model to JSON", () { 
      var json = impressionsModel.toJson(); 
      expect(json, isNotNull); 
 
      print(json); 
      //impressionsModel.displayJson(); 
      //impressionsModel.display(); 
    }); 
 
    test("From JSON to model", () { 
      var json = impressionsModel.toJson(); 
      impressionsModel.clear(); 
      expect(impressionsModel.isEmpty, isTrue); 
      impressionsModel.fromJson(json); 
      expect(impressionsModel.isEmpty, isFalse); 
 
      impressionsModel.display(); 
    }); 
 
    test("From model entry to JSON", () { 
      var json = impressionsModel.fromEntryToJson("Country"); 
      expect(json, isNotNull); 
 
      print(json); 
      //impressionsModel.displayEntryJson("Country"); 
      //impressionsModel.displayJson(); 
      //impressionsModel.display(); 
    }); 
 
    test("From JSON to model entry", () { 
      var json = impressionsModel.fromEntryToJson("Country"); 
      countries.clear(); 
      expect(countries.isEmpty, isTrue); 
      impressionsModel.fromJsonToEntry(json); 
      expect(countries.isEmpty, isFalse); 
 
      countries.display(title: "From JSON to model entry"); 
    }); 
 
    test("Add country required error", () { 
      // no required attribute that is not id 
    }); 
 
    test("Add country unique error", () { 
      var countryConcept = countries.concept; 
      var countryCount = countries.length; 
      var country = Country(countryConcept); 
      var randomCountry = countries.random(); 
      country.name = randomCountry.name; 
      var added = countries.add(country); 
      expect(added, isFalse); 
      expect(countries.length, equals(countryCount)); 
      expect(countries.exceptions.length, greaterThan(0)); 
 
      countries.exceptions.display(title: "Add country unique error"); 
    }); 
 
    test("Not found country by oid", () { 
      var ednetOid = Oid.ts(1345648254063); 
      var country = countries.singleWhereOid(ednetOid); 
      expect(country, isNull); 
    }); 
 
    test("Find country by oid", () { 
      var randomCountry = countries.random(); 
      var country = countries.singleWhereOid(randomCountry.oid); 
      expect(country, isNotNull); 
      expect(country, equals(randomCountry)); 
    }); 
 
    test("Find country by attribute id", () { 
      var randomCountry = countries.random(); 
      var country = 
          countries.singleWhereAttributeId("name", randomCountry.name); 
      expect(country, isNotNull); 
      expect(country!.name, equals(randomCountry.name)); 
    }); 
 
    test("Find country by required attribute", () { 
      // no required attribute that is not id 
    }); 
 
    test("Find country by attribute", () { 
      // no attribute that is not required 
    }); 
 
    test("Select countries by attribute", () { 
      // no attribute that is not required 
    }); 
 
    test("Select countries by required attribute", () { 
      // no required attribute that is not id 
    }); 
 
    test("Select countries by attribute, then add", () { 
      // no attribute that is not id 
    }); 
 
    test("Select countries by attribute, then remove", () { 
      // no attribute that is not id 
    }); 
 
    test("Sort countries", () { 
      countries.sort(); 
 
      //countries.display(title: "Sort countries"); 
    }); 
 
    test("Order countries", () { 
      var orderedCountries = countries.order(); 
      expect(orderedCountries.isEmpty, isFalse); 
      expect(orderedCountries.length, equals(countries.length)); 
      expect(orderedCountries.source?.isEmpty, isFalse); 
      expect(orderedCountries.source?.length, equals(countries.length)); 
      expect(orderedCountries, isNot(same(countries))); 
 
      //orderedCountries.display(title: "Order countries"); 
    }); 
 
    test("Copy countries", () { 
      var copiedCountries = countries.copy(); 
      expect(copiedCountries.isEmpty, isFalse); 
      expect(copiedCountries.length, equals(countries.length)); 
      expect(copiedCountries, isNot(same(countries))); 
      copiedCountries.forEach((e) => 
        expect(e, equals(countries.singleWhereOid(e.oid)))); 
      copiedCountries.forEach((e) => 
        expect(e, isNot(same(countries.singleWhereId(e.id!))))); 
 
      //copiedCountries.display(title: "Copy countries"); 
    }); 
 
    test("True for every country", () { 
      // no required attribute that is not id 
    }); 
 
    test("Random country", () { 
      var country1 = countries.random(); 
      expect(country1, isNotNull); 
      var country2 = countries.random(); 
      expect(country2, isNotNull); 
 
      //country1.display(prefix: "random1"); 
      //country2.display(prefix: "random2"); 
    }); 
 
    test("Update country id with try", () { 
      var randomCountry = countries.random(); 
      var beforeUpdate = randomCountry.name; 
      try { 
        randomCountry.name = 'craving'; 
      } on UpdateException catch (e) { 
        expect(randomCountry.name, equals(beforeUpdate)); 
      } 
    }); 
 
    test("Update country id without try", () { 
      var randomCountry = countries.random(); 
      var beforeUpdateValue = randomCountry.name; 
      expect(() => randomCountry.name = 'highway', throws); 
      expect(randomCountry.name, equals(beforeUpdateValue)); 
    }); 
 
    test("Update country id with success", () { 
      var randomCountry = countries.random(); 
      var afterUpdateEntity = randomCountry.copy(); 
      var attribute = randomCountry.concept.attributes.singleWhereCode("name"); 
      expect(attribute?.update, isFalse); 
      attribute?.update = true; 
      afterUpdateEntity.name = 'debt'; 
      expect(afterUpdateEntity.name, equals('debt')); 
      attribute?.update = false; 
      var updated = countries.update(randomCountry, afterUpdateEntity); 
      expect(updated, isTrue); 
 
      var entity = countries.singleWhereAttributeId("name", 'debt'); 
      expect(entity, isNotNull); 
      expect(entity!.name, equals('debt')); 
 
      //countries.display("After update country id"); 
    }); 
 
    test("Update country non id attribute with failure", () { 
      // no attribute that is not id 
    }); 
 
    test("Copy Equality", () { 
      var randomCountry = countries.random(); 
      randomCountry.display(prefix:"before copy: "); 
      var randomCountryCopy = randomCountry.copy(); 
      randomCountryCopy.display(prefix:"after copy: "); 
      expect(randomCountry, equals(randomCountryCopy)); 
      expect(randomCountry.oid, equals(randomCountryCopy.oid)); 
      expect(randomCountry.code, equals(randomCountryCopy.code)); 
      expect(randomCountry.name, equals(randomCountryCopy.name)); 
 
      expect(randomCountry.id, isNotNull); 
      expect(randomCountryCopy.id, isNotNull); 
      expect(randomCountry.id, equals(randomCountryCopy.id)); 
 
      var idsEqual = false; 
      if (randomCountry.id == randomCountryCopy.id) { 
        idsEqual = true; 
      } 
      expect(idsEqual, isTrue); 
 
      idsEqual = false; 
      if (randomCountry.id!.equals(randomCountryCopy.id!)) { 
        idsEqual = true; 
      } 
      expect(idsEqual, isTrue); 
    }); 
 
    test("country action undo and redo", () { 
      var countryCount = countries.length; 
      var country = Country(countries.concept); 
        country.name = 'letter'; 
      countries.add(country); 
      expect(countries.length, equals(++countryCount)); 
      countries.remove(country); 
      expect(countries.length, equals(--countryCount)); 
 
      var action = AddCommand(session, countries, country); 
      action.doIt(); 
      expect(countries.length, equals(++countryCount)); 
 
      action.undo(); 
      expect(countries.length, equals(--countryCount)); 
 
      action.redo(); 
      expect(countries.length, equals(++countryCount)); 
    }); 
 
    test("country session undo and redo", () { 
      var countryCount = countries.length; 
      var country = Country(countries.concept); 
        country.name = 'effortless';
      countries.add(country); 
      expect(countries.length, equals(++countryCount)); 
      countries.remove(country); 
      expect(countries.length, equals(--countryCount)); 
 
      var action = AddCommand(session, countries, country); 
      action.doIt(); 
      expect(countries.length, equals(++countryCount)); 
 
      session.past.undo(); 
      expect(countries.length, equals(--countryCount)); 
 
      session.past.redo(); 
      expect(countries.length, equals(++countryCount)); 
    }); 
 
    test("Country update undo and redo", () { 
      // no attribute that is not id 
    }); 
 
    test("Country action with multiple undos and redos", () { 
      var countryCount = countries.length; 
      var country1 = countries.random(); 
 
      var action1 = RemoveCommand(session, countries, country1); 
      action1.doIt(); 
      expect(countries.length, equals(--countryCount)); 
 
      var country2 = countries.random(); 
 
      var action2 = RemoveCommand(session, countries, country2); 
      action2.doIt(); 
      expect(countries.length, equals(--countryCount)); 
 
      //session.past.display(); 
 
      session.past.undo(); 
      expect(countries.length, equals(++countryCount)); 
 
      session.past.undo(); 
      expect(countries.length, equals(++countryCount)); 
 
      //session.past.display(); 
 
      session.past.redo(); 
      expect(countries.length, equals(--countryCount)); 
 
      session.past.redo(); 
      expect(countries.length, equals(--countryCount)); 
 
      //session.past.display(); 
    }); 
 
    test("Transaction undo and redo", () { 
      var countryCount = countries.length; 
      var country1 = countries.random(); 
      var country2 = countries.random(); 
      while (country1 == country2) { 
        country2 = countries.random();  
      } 
      var action1 = RemoveCommand(session, countries, country1); 
      var action2 = RemoveCommand(session, countries, country2); 
 
      var transaction = new Transaction("two removes on countries", session); 
      transaction.add(action1); 
      transaction.add(action2); 
      transaction.doIt(); 
      countryCount = countryCount - 2; 
      expect(countries.length, equals(countryCount)); 
 
      countries.display(title:"Transaction Done"); 
 
      session.past.undo(); 
      countryCount = countryCount + 2; 
      expect(countries.length, equals(countryCount)); 
 
      countries.display(title:"Transaction Undone"); 
 
      session.past.redo(); 
      countryCount = countryCount - 2; 
      expect(countries.length, equals(countryCount)); 
 
      countries.display(title:"Transaction Redone"); 
    }); 
 
    test("Transaction with one action error", () { 
      var countryCount = countries.length; 
      var country1 = countries.random(); 
      var country2 = country1; 
      var action1 = RemoveCommand(session, countries, country1); 
      var action2 = RemoveCommand(session, countries, country2); 
 
      var transaction = Transaction( 
        "two removes on countries, with an error on the second", session); 
      transaction.add(action1); 
      transaction.add(action2); 
      var done = transaction.doIt(); 
      expect(done, isFalse); 
      expect(countries.length, equals(countryCount)); 
 
      //countries.display(title:"Transaction with an error"); 
    }); 
 
    test("Reactions to country actions", () { 
      var countryCount = countries.length; 
 
      var reaction = CountryReaction(); 
      expect(reaction, isNotNull); 
 
      travelDomain.startCommandReaction(reaction); 
      var country = Country(countries.concept); 
        country.name = 'beginning'; 
      countries.add(country); 
      expect(countries.length, equals(++countryCount)); 
      countries.remove(country); 
      expect(countries.length, equals(--countryCount)); 
 
      var session = travelDomain.newSession(); 
      var addCommand = AddCommand(session, countries, country); 
      addCommand.doIt(); 
      expect(countries.length, equals(++countryCount)); 
      expect(reaction.reactedOnAdd, isTrue); 
 
      // no attribute that is not id 
    }); 
 
  }); 
} 
 
class CountryReaction implements ICommandReaction { 
  bool reactedOnAdd    = false; 
  bool reactedOnUpdate = false; 
 
  void react(ICommand action) { 
    if (action is IEntitiesCommand) { 
      reactedOnAdd = true; 
    } else if (action is IEntityCommand) { 
      reactedOnUpdate = true; 
    } 
  } 
} 
 
void main() { 
  var repository = Repository(); 
  TravelDomain travelDomain = repository.getDomainModels("Travel") as TravelDomain;   
  assert(travelDomain != null); 
  ImpressionsModel impressionsModel = travelDomain.getModelEntries("Impressions") as ImpressionsModel;  
  assert(impressionsModel != null); 
  var countries = impressionsModel.countries; 
  testTravelImpressionsCountries(travelDomain, impressionsModel, countries); 
} 
 
