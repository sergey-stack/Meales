//
//  Meales.swift
//  Meales
//
//  Created by сергей on 23.08.22.
//

import Foundation
import UIKit

struct Meal {
    let name: String
    let price: Double
    let image: UIImage?
    var feedbacks: [Feedback] = []

    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "⭐️", count: Int(rating.rounded(.up))) // делает округление control command пробел
        } else {
            return "There are no rewievs yet"
        }
    }

    private var rating: Double? {
        if feedbacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for rewiev in feedbacks {
                sum += rewiev.mark
            }
            return sum / Double(feedbacks.count)
        }
    }
}
