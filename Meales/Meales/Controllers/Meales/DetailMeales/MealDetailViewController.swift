//
//  MealDetailViewController.swift
//  Meales
//
//  Created by сергей on 23.08.22.
//

import UIKit

class MealDetailViewController: UIViewController {
    var index: Int!
    
    var meal: Meal {
        MealesData.shared.meals[index]//вычисляемое свойство
    }
    
    @IBOutlet  var mealStackView: UIStackView!
    
    @IBOutlet  var imageView: UIImageView!
    
    
    @IBOutlet  var mealNameLabel: UILabel!
    
    
    @IBOutlet var mealPriceLabel: UILabel!
    
    
    @IBOutlet var ratingLabel: UILabel!
    
    @IBOutlet var showReviewsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)// передаётся размер экрана
        
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
  
    func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        title = meal.name//отоюражать имя продукта
        imageView.image = meal.image//отображать картинку
        mealNameLabel.text = meal.name//имя
        mealPriceLabel.text = String(meal.price) + "BYN"//цену
        ratingLabel.text = meal.ratingBar
        
        let showReviewsBtnTitle = "Просмотреть (\(meal.feedbacks.count)) отзывов"
        showReviewsButton.setTitle(showReviewsBtnTitle, for: .normal)//отправляем текст
        showReviewsButton.isEnabled = meal.feedbacks.count != 0//если кол-во фитбеков не =0 то кнопка энейбл
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? FeedBackViewController {
            dest.index = index
        
    }
        if let dest = segue.destination as? ReviewsTableVC {
            dest.index = index
        }
    }

}
