
import Foundation
class Warehouse: Realty {
    private var companyOwner: String
    private var product: [String] = []
    
    init(name: String, area: Int, price: Int, address: String, companyOwner: String, product: [String]) {
        self.companyOwner = companyOwner
        self.product = product
        super.init(name: name, area: area, price: price, address: address)
    }
    override func getInfo() {
        print("Все продукты компании \(companyOwner) : \(product)")
    }
}
