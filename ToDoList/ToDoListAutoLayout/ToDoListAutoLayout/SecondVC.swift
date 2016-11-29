//
//  SecondVC.swift
//  ToDoListAutoLayout
//
//  Created by Othman AlOthman on 11/28/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var secondTableView: UITableView!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBAction func secondButton(_ sender: Any) {
        if secondTextField.text == "" {return}
        let input = secondTextField.text
        let newItem = Item(itemName: input!, itemDescription: "")
        newList.toDoItems.append(newItem)
        secondTableView.reloadData()
        
        
        
    }
    
    
    
    
    var newList: List!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newList.toDoItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "second", for: indexPath)
        
        cell.textLabel?.text = newList.toDoItems[indexPath.row].itemName
        
        return cell 
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ThirdVC = segue.destination as! ThirdVC
        let index = secondTableView.indexPathForSelectedRow?.row
        ThirdVC.newItem = newList.toDoItems[index!]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
