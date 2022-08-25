//
//  DataService.swift
//  Meales
//
//  Created by сергей on 23.08.22.
//

import UIKit
class MealesData {
    static let shared = MealesData()
    var meals: [Meal]
    private init() {
        meals = [Meal(name: "Гамбургер", price: 2.0, image: #imageLiteral(resourceName: "gamburger.1a7a73e37517da13837e0d3ea52e59de")  ),
                 Meal(name: "Kартошка", price: 2.50, image: #imageLiteral(resourceName: "kartofel-fri.1a7a73e37517da13837e0d3ea52e59de.jpg") ),
                 Meal(name: "Цезарь ролл", price: 5.80, image:#imageLiteral(resourceName: "cesar-roll.1a7a73e37517da13837e0d3ea52e59de.jpg") ),
                 Meal(name: "Апельсиновый сок", price: 3.10, image: #imageLiteral(resourceName: "apelsinovyj-sok.1a7a73e37517da13837e0d3ea52e59de.jpg") ),
                 Meal(name: "Овощной салат", price: 7.40, image: #imageLiteral(resourceName: "salat-ovoshnoy.1a7a73e37517da13837e0d3ea52e59de.jpg")),
                 Meal(name: "Грик мак", price: 9.30, image:#imageLiteral(resourceName: "grik-mak2.4d0b89381ccf466a6b73b35d2ce5192a.jpg") ),
                 Meal(name: "Мак флури", price: 2.90, image: #imageLiteral(resourceName: "makfluri-deluxe-shokoladno-klubnichnoe.1a7a73e37517da13837e0d3ea52e59de.jpg") )]
    
}
                
}
