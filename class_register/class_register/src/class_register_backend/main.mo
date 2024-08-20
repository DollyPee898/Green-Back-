
// imports
import Text "mo:base/Text";
import Map "mo:base/HashMap";


actor {

  type Matric_Number = Text;

  type Entry = {
    name:Text;
    email: Text;
    class_name:Text;
    department:Text;
    faculty:Text;
  };

  // Storage 
  let Record = Map.HashMap<Matric_Number, Entry>(0, Text.equal, Text.hash);


// Register
  public func add(matric_number : Matric_Number, entry : Entry): async () {
    Record.put(matric_number, entry);
  };

// Look-up
  public query func look_up(matric_number : Matric_Number) : async ?Entry {
    Record.get(matric_number)
  };
};