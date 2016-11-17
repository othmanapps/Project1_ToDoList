//
//  ListOfItemsVC.swift
//  ToDoListDraftOne
//
//  Created by Othman AlOthman on 11/15/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import UIKit

class ListOfItemsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var list: ToDoList!
    
    var secondCellId = "secondCell"
    
    
    
    @IBOutlet weak var itemsListVC: UITableView!
    
    @IBOutlet weak var newItemTextField: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        let input = newItemTextField.text
        let newItem = ToDoItem(name: input! , description: "")
        list.items.append(newItem)
        
        itemsListVC.reloadData()
        
        newItemTextField.text = nil
    }
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return list.items.count
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: secondCellId, for: indexPath)
        
        let myRow = indexPath.row
        
        
        let listItem = list.items[myRow]
        
        cell.textLabel?.text = listItem.name
        
        
        return cell
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "firstBack" {
            let ItemsDescriptionVC = segue.destination as! ItemDescriptionVC
            let index = itemsListVC.indexPathForSelectedRow!.row
            ItemsDescriptionVC.item = list.items[index]
        }
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
