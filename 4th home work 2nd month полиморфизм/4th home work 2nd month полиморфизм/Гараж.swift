

import Foundation

class Garage: Realty {
    private var basement: String
    private var brandCar: [String] = []
    
    init(name: String, area: Int, price: Int, address: String, basement: String, brandCar: [String]) {
        self.basement = basement
        self.brandCar = brandCar
        super .init(name: name, area: area, price: price, address: address)
    }
    override func getInfo() {
        print("Подвал внутри гаража - \(basement)\nВиды машин в гараже  - \(brandCar)")
    }
}
