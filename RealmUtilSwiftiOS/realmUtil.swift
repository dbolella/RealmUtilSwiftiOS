import Foundation
import RealmSwift

class realmUtil {
    var realm: Realm! = try! Realm()
    
    func printRealm() {
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    func add(object:Object) {
        try! realm.write {
            realm.add(object)
        }
    }
    
    func collection(from json:JSON) -> Any {
        var items = [Any]()
        for item in json.dictionary! {
            items.append(item.value.stringValue)
        }
        return items
    }
    
    func getFirstItem(of type:Object.Type) -> Object {
        return realm.objects(type).first!
    }
    
    func getAll<T>() -> Results<T> {
        return realm.objects(T.self)
    }
    
}
