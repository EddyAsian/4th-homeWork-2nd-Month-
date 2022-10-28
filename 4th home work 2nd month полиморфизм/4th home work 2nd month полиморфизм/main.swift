
//  Created on 24/10/22.
//

import Foundation
//ДЗ #4. Полиморфизм
//
//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации
//Наследовать от него классы: Квартира, Склад, Гараж
//В классе Квартира добавить параметр: количество жильцов, массив с удобствами(например: сан.узел, интернет и тд)
//Переопределить метод из базового класса и отобразить все данные об объекте в одной строке
//В классе склад доп.параметры - какой компании пренадлежит и массив с имеющимися товарами на складе
//Добавить метод, отображающий товары на складе
//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа

//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации

class Realty {
    private var name: String
    private var area: Int
    private var price: Int
    private var address: String
    
    init(name: String, area: Int, price: Int, address: String) {
        self.name = name
        self.area = area
        self.price = price
        self.address = address
    }
    //добавим методы родительскому классу:
    func priceChange(setNewPrice: Int) {
        self.price = setNewPrice
    }
    func getInfo() {
        print("Имя - \(self.name)\nТорговая площадь - \(self.area) м2\nСтоимость - \(self.price) сомов\nАдрес - \(self.address)")
    }
    
    func getName() -> String {
        return self.name
    }
    func getArea() -> Int {
        return self.area
    }
    func getPrice() -> Int {
        return self.price
    }
    func getAddress() -> String {
        return self.address
    }
}
let name1 = Realty(name: "торговый центр ГУМ", area: 896, price: 100000000, address: "пр. Чуй 92")

name1.priceChange(setNewPrice: 112000000)
name1.getInfo()
print("--------------------------")


let name2 = Appartment(name: "Квартира №1", area: 76, price: 2600000, address: "мкр. Тунгуч 155 д", tenants: 2, convenience: ["Интернет", "Раздельные сан. узлы", "Утепленный балкон"])

name2.getInfo()
print("---------------------")


let name3 = Warehouse(name: "Склад №1", area: 970, price: 356000, address: "ул. Ибраимова 345",companyOwner: "Кока-Кола", product: ["Coca-cola (320 л)", "Fanta (123 л)", "Sprite(95 л)"])

name3.getInfo()
print("-----------------")


let name4 = Garage(name: "Подземная парковка", area: 970, price: 125000, address: "ул. Ибраимова 345 (под зданием склада Кока_Кола)", basement: "Имеется", brandCar: ["Toyota", "Honda", "Porshe", "Audi"])

name4.getInfo()
