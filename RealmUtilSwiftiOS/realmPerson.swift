import Foundation
import RealmSwift

struct realmPerson {
    var util:realmUtil = realmUtil()
    
    func add(from json:JSON){
        add(from: util.collection(from: json))
    }
    
    func add(from value:Any) {
        util.add(object: Person(value: value))
    }
    
    func getFirstPerson() -> Person{
        return util.getFirstItem(of: Person.self) as! Person
    }
    
    func people() -> Results<Person> {
        return util.getAll() 
    }
    
}
