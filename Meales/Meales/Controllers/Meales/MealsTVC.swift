//
//  MealsTVC.swift
//  Meales
//
//  Created by сергей on 23.08.22.
//

import UIKit

class MealsTVC: UITableViewController {
    
    var meals: [Meal] {
        MealesData.shared.meals// вычисляемое свойство,вытаскивает массив милсов
    }


    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        let meal = meals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell .detailTextLabel?.text = String(meal.price) + "BYN\n"
        cell .imageView?.image = meal.image//добавление в ячейку картику
        

        return cell
    }
    

   
    
    
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowMealDetail" else {return}
        guard let indexPath = tableView.indexPathForSelectedRow//вытаскиваем индекс нажатой ячейки
        else {return}
       
        let mealDetailVC = segue.destination as!//получаем указатель на контроллер,на который переходим
        MealDetailViewController
        mealDetailVC.index = indexPath.row
    }
    
    @IBAction func unwindToMealsTVC(_ unwindSegue: UIStoryboardSegue) {
        tableView.reloadData()
        
    }
}
