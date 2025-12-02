import Foundation

protocol ProductProps : Identifiable{
    var id : Int { get };
    var name : String {get};
    var price : Int {get}
    var image : String {get}
}

