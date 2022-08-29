//
//  FeedBackViewController.swift
//  Meales
//
//  Created by сергей on 24.08.22.
//

import UIKit

class FeedBackViewController: UIViewController {
    @IBOutlet var feedBackTextView: UITextView!
    
    @IBOutlet var ratingSegment: UISegmentedControl!
    
    @IBOutlet var saveFeedBackBtn: UIButton!
    
    @IBOutlet var errorLbl: UILabel!
    
    var index: Int!
    
    // var meal: Meal {
    //  MealesData.shared.meals[index]
    // }

    override func viewDidLoad() {
        super.viewDidLoad()
        feedBackTextView.delegate = self // текствью делегирует экшены
    }

    @IBAction func saveFeedBack() {
        let feedback = Feedback(text: feedBackTextView.text,
                                mark: Double(ratingSegment.selectedSegmentIndex + 1))
        MealesData.shared.meals[index].feedbacks.append(feedback)
        //  navigationController?.popToRootViewController(animated: true)
    }
}

// MARK: UITextViewDelegate
    
extension FeedBackViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == feedBackTextView {
            let isCountEnough = textView.text.count > 20 // забираю кол-во символов в текствью
            saveFeedBackBtn.isEnabled = isCountEnough
            errorLbl.isHidden = isCountEnough
        }
        return true
    }
}
