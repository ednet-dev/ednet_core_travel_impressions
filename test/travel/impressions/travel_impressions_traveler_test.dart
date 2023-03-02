 
// test/travel/impressions/travel_impressions_traveler_test.dart 
 
import "package:test/test.dart"; 
import "package:ednet_core/ednet_core.dart"; 
import "package:travel_impressions/travel_impressions.dart"; 
 
void testTravelImpressionsTravelers( 
    TravelDomain travelDomain, ImpressionsModel impressionsModel, Travelers travelers) { 
  DomainSession session; 
  group("Testing Travel.Impressions.Traveler", () { 
    session = travelDomain.newSession();  
    setUp(() { 
      impressionsModel.init(); 
    }); 
    tearDown(() { 
      impressionsModel.clear(); 
    }); 
 
    test("Not empty model", () { 
      expect(impressionsModel.isEmpty, isFalse); 
      expect(travelers.isEmpty, isFalse); 
    }); 
 
    test("Empty model", () { 
      impressionsModel.clear(); 
      expect(impressionsModel.isEmpty, isTrue); 
      expect(travelers.isEmpty, isTrue); 
      expect(travelers.exceptions.isEmpty, isTrue); 
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
      var json = impressionsModel.fromEntryToJson("Traveler"); 
      expect(json, isNotNull); 
 
      print(json); 
      //impressionsModel.displayEntryJson("Traveler"); 
      //impressionsModel.displayJson(); 
      //impressionsModel.display(); 
    }); 
 
    test("From JSON to model entry", () { 
      var json = impressionsModel.fromEntryToJson("Traveler"); 
      travelers.clear(); 
      expect(travelers.isEmpty, isTrue); 
      impressionsModel.fromJsonToEntry(json); 
      expect(travelers.isEmpty, isFalse); 
 
      travelers.display(title: "From JSON to model entry"); 
    }); 
 
    test("Add traveler required error", () { 
      var travelerConcept = travelers.concept; 
      var travelerCount = travelers.length; 
      var traveler = Traveler(travelerConcept); 
      var added = travelers.add(traveler); 
      expect(added, isFalse); 
      expect(travelers.length, equals(travelerCount)); 
      expect(travelers.exceptions.length, greaterThan(0)); 
      expect(travelers.exceptions.toList()[0].category, equals("required")); 
 
      travelers.exceptions.display(title: "Add traveler required error"); 
    }); 
 
    test("Add traveler unique error", () { 
      var travelerConcept = travelers.concept; 
      var travelerCount = travelers.length; 
      var traveler = Traveler(travelerConcept); 
      var randomTraveler = travelers.random(); 
      traveler.email = randomTraveler.email; 
      var added = travelers.add(traveler); 
      expect(added, isFalse); 
      expect(travelers.length, equals(travelerCount)); 
      expect(travelers.exceptions.length, greaterThan(0)); 
 
      travelers.exceptions.display(title: "Add traveler unique error"); 
    }); 
 
    test("Not found traveler by oid", () { 
      var ednetOid = Oid.ts(1345648254063); 
      var traveler = travelers.singleWhereOid(ednetOid); 
      expect(traveler, isNull); 
    }); 
 
    test("Find traveler by oid", () { 
      var randomTraveler = travelers.random(); 
      var traveler = travelers.singleWhereOid(randomTraveler.oid); 
      expect(traveler, isNotNull); 
      expect(traveler, equals(randomTraveler)); 
    }); 
 
    test("Find traveler by attribute id", () { 
      var randomTraveler = travelers.random(); 
      var traveler = 
          travelers.singleWhereAttributeId("email", randomTraveler.email); 
      expect(traveler, isNotNull); 
      expect(traveler!.email, equals(randomTraveler.email)); 
    }); 
 
    test("Find traveler by required attribute", () { 
      var randomTraveler = travelers.random(); 
      var traveler = 
          travelers.firstWhereAttribute("password", randomTraveler.password); 
      expect(traveler, isNotNull); 
      expect(traveler.password, equals(randomTraveler.password)); 
    }); 
 
    test("Find traveler by attribute", () { 
      var randomTraveler = travelers.random(); 
      var traveler = 
          travelers.firstWhereAttribute("description", randomTraveler.description); 
      expect(traveler, isNotNull); 
      expect(traveler.description, equals(randomTraveler.description)); 
    }); 
 
    test("Select travelers by attribute", () { 
      var randomTraveler = travelers.random(); 
      var selectedTravelers = 
          travelers.selectWhereAttribute("description", randomTraveler.description); 
      expect(selectedTravelers.isEmpty, isFalse); 
      selectedTravelers.forEach((se) => 
          expect(se.description, equals(randomTraveler.description))); 
 
      //selectedTravelers.display(title: "Select travelers by description"); 
    }); 
 
    test("Select travelers by required attribute", () { 
      var randomTraveler = travelers.random(); 
      var selectedTravelers = 
          travelers.selectWhereAttribute("password", randomTraveler.password); 
      expect(selectedTravelers.isEmpty, isFalse); 
      selectedTravelers.forEach((se) => 
          expect(se.password, equals(randomTraveler.password))); 
 
      //selectedTravelers.display(title: "Select travelers by password"); 
    }); 
 
    test("Select travelers by attribute, then add", () { 
      var randomTraveler = travelers.random(); 
      var selectedTravelers = 
          travelers.selectWhereAttribute("password", randomTraveler.password); 
      expect(selectedTravelers.isEmpty, isFalse); 
      expect(selectedTravelers.source?.isEmpty, isFalse); 
      var travelersCount = travelers.length; 
 
      var traveler = Traveler(travelers.concept); 
      traveler.email = 'account'; 
      traveler.password = 'water'; 
      traveler.firstName = 'sailing'; 
      traveler.lastName = 'sand'; 
      traveler.description = 'up'; 
      var added = selectedTravelers.add(traveler); 
      expect(added, isTrue); 
      expect(travelers.length, equals(++travelersCount)); 
 
      //selectedTravelers.display(title: 
      //  "Select travelers by attribute, then add"); 
      //travelers.display(title: "All travelers"); 
    }); 
 
    test("Select travelers by attribute, then remove", () { 
      var randomTraveler = travelers.random(); 
      var selectedTravelers = 
          travelers.selectWhereAttribute("password", randomTraveler.password); 
      expect(selectedTravelers.isEmpty, isFalse); 
      expect(selectedTravelers.source?.isEmpty, isFalse); 
      var travelersCount = travelers.length; 
 
      var removed = selectedTravelers.remove(randomTraveler); 
      expect(removed, isTrue); 
      expect(travelers.length, equals(--travelersCount)); 
 
      randomTraveler.display(prefix: "removed"); 
      //selectedTravelers.display(title: 
      //  "Select travelers by attribute, then remove"); 
      //travelers.display(title: "All travelers"); 
    }); 
 
    test("Sort travelers", () { 
      travelers.sort(); 
 
      //travelers.display(title: "Sort travelers"); 
    }); 
 
    test("Order travelers", () { 
      var orderedTravelers = travelers.order(); 
      expect(orderedTravelers.isEmpty, isFalse); 
      expect(orderedTravelers.length, equals(travelers.length)); 
      expect(orderedTravelers.source?.isEmpty, isFalse); 
      expect(orderedTravelers.source?.length, equals(travelers.length)); 
      expect(orderedTravelers, isNot(same(travelers))); 
 
      //orderedTravelers.display(title: "Order travelers"); 
    }); 
 
    test("Copy travelers", () { 
      var copiedTravelers = travelers.copy(); 
      expect(copiedTravelers.isEmpty, isFalse); 
      expect(copiedTravelers.length, equals(travelers.length)); 
      expect(copiedTravelers, isNot(same(travelers))); 
      copiedTravelers.forEach((e) => 
        expect(e, equals(travelers.singleWhereOid(e.oid)))); 
      copiedTravelers.forEach((e) => 
        expect(e, isNot(same(travelers.singleWhereId(e.id!))))); 
 
      //copiedTravelers.display(title: "Copy travelers"); 
    }); 
 
    test("True for every traveler", () { 
      expect(travelers.every((e) => e.password != null), isTrue); 
    }); 
 
    test("Random traveler", () { 
      var traveler1 = travelers.random(); 
      expect(traveler1, isNotNull); 
      var traveler2 = travelers.random(); 
      expect(traveler2, isNotNull); 
 
      //traveler1.display(prefix: "random1"); 
      //traveler2.display(prefix: "random2"); 
    }); 
 
    test("Update traveler id with try", () { 
      var randomTraveler = travelers.random(); 
      var beforeUpdate = randomTraveler.email; 
      try { 
        randomTraveler.email = 'house'; 
      } on UpdateException catch (e) { 
        expect(randomTraveler.email, equals(beforeUpdate)); 
      } 
    }); 
 
    test("Update traveler id without try", () { 
      var randomTraveler = travelers.random(); 
      var beforeUpdateValue = randomTraveler.email; 
      expect(() => randomTraveler.email = 'pencil', throws); 
      expect(randomTraveler.email, equals(beforeUpdateValue)); 
    }); 
 
    test("Update traveler id with success", () { 
      var randomTraveler = travelers.random(); 
      var afterUpdateEntity = randomTraveler.copy(); 
      var attribute = randomTraveler.concept.attributes.singleWhereCode("email"); 
      expect(attribute?.update, isFalse); 
      attribute?.update = true; 
      afterUpdateEntity.email = 'point'; 
      expect(afterUpdateEntity.email, equals('point')); 
      attribute?.update = false; 
      var updated = travelers.update(randomTraveler, afterUpdateEntity); 
      expect(updated, isTrue); 
 
      var entity = travelers.singleWhereAttributeId("email", 'point'); 
      expect(entity, isNotNull); 
      expect(entity!.email, equals('point')); 
 
      //travelers.display("After update traveler id"); 
    }); 
 
    test("Update traveler non id attribute with failure", () { 
      var randomTraveler = travelers.random(); 
      var afterUpdateEntity = randomTraveler.copy(); 
      afterUpdateEntity.password = 'life'; 
      expect(afterUpdateEntity.password, equals('life')); 
      // travelers.update can only be used if oid, code or id is set. 
      expect(() => travelers.update(randomTraveler, afterUpdateEntity), throws); 
    }); 
 
    test("Copy Equality", () { 
      var randomTraveler = travelers.random(); 
      randomTraveler.display(prefix:"before copy: "); 
      var randomTravelerCopy = randomTraveler.copy(); 
      randomTravelerCopy.display(prefix:"after copy: "); 
      expect(randomTraveler, equals(randomTravelerCopy)); 
      expect(randomTraveler.oid, equals(randomTravelerCopy.oid)); 
      expect(randomTraveler.code, equals(randomTravelerCopy.code)); 
      expect(randomTraveler.email, equals(randomTravelerCopy.email)); 
      expect(randomTraveler.password, equals(randomTravelerCopy.password)); 
      expect(randomTraveler.firstName, equals(randomTravelerCopy.firstName)); 
      expect(randomTraveler.lastName, equals(randomTravelerCopy.lastName)); 
      expect(randomTraveler.description, equals(randomTravelerCopy.description)); 
 
      expect(randomTraveler.id, isNotNull); 
      expect(randomTravelerCopy.id, isNotNull); 
      expect(randomTraveler.id, equals(randomTravelerCopy.id)); 
 
      var idsEqual = false; 
      if (randomTraveler.id == randomTravelerCopy.id) { 
        idsEqual = true; 
      } 
      expect(idsEqual, isTrue); 
 
      idsEqual = false; 
      if (randomTraveler.id!.equals(randomTravelerCopy.id!)) { 
        idsEqual = true; 
      } 
      expect(idsEqual, isTrue); 
    }); 
 
    test("traveler action undo and redo", () { 
      var travelerCount = travelers.length; 
      var traveler = Traveler(travelers.concept); 
        traveler.email = 'future'; 
      traveler.password = 'dinner'; 
      traveler.firstName = 'drink'; 
      traveler.lastName = 'theme'; 
      traveler.description = 'cardboard'; 
      travelers.add(traveler); 
      expect(travelers.length, equals(++travelerCount)); 
      travelers.remove(traveler); 
      expect(travelers.length, equals(--travelerCount)); 
 
      var action = AddCommand(session, travelers, traveler); 
      action.doIt(); 
      expect(travelers.length, equals(++travelerCount)); 
 
      action.undo(); 
      expect(travelers.length, equals(--travelerCount)); 
 
      action.redo(); 
      expect(travelers.length, equals(++travelerCount)); 
    }); 
 
    test("traveler session undo and redo", () { 
      var travelerCount = travelers.length; 
      var traveler = Traveler(travelers.concept); 
        traveler.email = 'highway'; 
      traveler.password = 'room'; 
      traveler.firstName = 'office'; 
      traveler.lastName = 'ball'; 
      traveler.description = 'brad'; 
      travelers.add(traveler); 
      expect(travelers.length, equals(++travelerCount)); 
      travelers.remove(traveler); 
      expect(travelers.length, equals(--travelerCount)); 
 
      var action = AddCommand(session, travelers, traveler); 
      action.doIt(); 
      expect(travelers.length, equals(++travelerCount)); 
 
      session.past.undo(); 
      expect(travelers.length, equals(--travelerCount)); 
 
      session.past.redo(); 
      expect(travelers.length, equals(++travelerCount)); 
    }); 
 
    test("Traveler update undo and redo", () { 
      var traveler = travelers.random(); 
      var action = SetAttributeCommand(session, traveler, "password", 'train'); 
      action.doIt(); 
 
      session.past.undo(); 
      expect(traveler.password, equals(action.before)); 
 
      session.past.redo(); 
      expect(traveler.password, equals(action.after)); 
    }); 
 
    test("Traveler action with multiple undos and redos", () { 
      var travelerCount = travelers.length; 
      var traveler1 = travelers.random(); 
 
      var action1 = RemoveCommand(session, travelers, traveler1); 
      action1.doIt(); 
      expect(travelers.length, equals(--travelerCount)); 
 
      var traveler2 = travelers.random(); 
 
      var action2 = RemoveCommand(session, travelers, traveler2); 
      action2.doIt(); 
      expect(travelers.length, equals(--travelerCount)); 
 
      //session.past.display(); 
 
      session.past.undo(); 
      expect(travelers.length, equals(++travelerCount)); 
 
      session.past.undo(); 
      expect(travelers.length, equals(++travelerCount)); 
 
      //session.past.display(); 
 
      session.past.redo(); 
      expect(travelers.length, equals(--travelerCount)); 
 
      session.past.redo(); 
      expect(travelers.length, equals(--travelerCount)); 
 
      //session.past.display(); 
    }); 
 
    test("Transaction undo and redo", () { 
      var travelerCount = travelers.length; 
      var traveler1 = travelers.random(); 
      var traveler2 = travelers.random(); 
      while (traveler1 == traveler2) { 
        traveler2 = travelers.random();  
      } 
      var action1 = RemoveCommand(session, travelers, traveler1); 
      var action2 = RemoveCommand(session, travelers, traveler2); 
 
      var transaction = new Transaction("two removes on travelers", session); 
      transaction.add(action1); 
      transaction.add(action2); 
      transaction.doIt(); 
      travelerCount = travelerCount - 2; 
      expect(travelers.length, equals(travelerCount)); 
 
      travelers.display(title:"Transaction Done"); 
 
      session.past.undo(); 
      travelerCount = travelerCount + 2; 
      expect(travelers.length, equals(travelerCount)); 
 
      travelers.display(title:"Transaction Undone"); 
 
      session.past.redo(); 
      travelerCount = travelerCount - 2; 
      expect(travelers.length, equals(travelerCount)); 
 
      travelers.display(title:"Transaction Redone"); 
    }); 
 
    test("Transaction with one action error", () { 
      var travelerCount = travelers.length; 
      var traveler1 = travelers.random(); 
      var traveler2 = traveler1; 
      var action1 = RemoveCommand(session, travelers, traveler1); 
      var action2 = RemoveCommand(session, travelers, traveler2); 
 
      var transaction = Transaction( 
        "two removes on travelers, with an error on the second", session); 
      transaction.add(action1); 
      transaction.add(action2); 
      var done = transaction.doIt(); 
      expect(done, isFalse); 
      expect(travelers.length, equals(travelerCount)); 
 
      //travelers.display(title:"Transaction with an error"); 
    }); 
 
    test("Reactions to traveler actions", () { 
      var travelerCount = travelers.length; 
 
      var reaction = TravelerReaction(); 
      expect(reaction, isNotNull); 
 
      travelDomain.startCommandReaction(reaction); 
      var traveler = Traveler(travelers.concept); 
        traveler.email = 'cup'; 
      traveler.password = 'mile'; 
      traveler.firstName = 'architecture'; 
      traveler.lastName = 'cream'; 
      traveler.description = 'cinema'; 
      travelers.add(traveler); 
      expect(travelers.length, equals(++travelerCount)); 
      travelers.remove(traveler); 
      expect(travelers.length, equals(--travelerCount)); 
 
      var session = travelDomain.newSession(); 
      var addCommand = AddCommand(session, travelers, traveler); 
      addCommand.doIt(); 
      expect(travelers.length, equals(++travelerCount)); 
      expect(reaction.reactedOnAdd, isTrue); 
 
      var setAttributeCommand = SetAttributeCommand( 
        session, traveler, "password", 'cloud'); 
      setAttributeCommand.doIt(); 
      expect(reaction.reactedOnUpdate, isTrue); 
      travelDomain.cancelCommandReaction(reaction); 
    }); 
 
  }); 
} 
 
class TravelerReaction implements ICommandReaction { 
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
  var travelers = impressionsModel.travelers; 
  testTravelImpressionsTravelers(travelDomain, impressionsModel, travelers); 
} 
 
