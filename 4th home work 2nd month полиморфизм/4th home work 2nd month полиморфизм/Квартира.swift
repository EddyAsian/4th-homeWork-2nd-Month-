
import Foundation

class Appartment: Realty {
    private var tenants: Int
    private var convenience: [String] = []
    
    init(name: String, area: Int, price: Int, address: String, tenants: Int, convenience: [String]) {
        self.tenants = tenants
        self.convenience = convenience
        super .init(name: name, area: area, price: price, address: address)
    }
    override func getInfo() {
        print("Имя - \(self.getName())\nТорговая площадь - \(self.getArea()) m2\nСтоимость - \(self.getPrice()) сомов\nАдресс - \(self.getAddress())\nКоличество жильцов - \(self.tenants)\nУдобства - \(convenience)")

    }
}
