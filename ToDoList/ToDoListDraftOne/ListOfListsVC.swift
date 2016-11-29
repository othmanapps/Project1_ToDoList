//
//  ListOfListsVC.swift
//  ToDoListDraftOne
//
//  Created by Othman AlOthman on 11/15/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import UIKit

class ListOfListsVC: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    // Mark: Outlets:
    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var listNameTextField: UITextField!
    
    
    
    // Mark: Actions
    
    @IBAction func addListButton(_ sender: Any) {
        
        let input = listNameTextField.text
        let newList = ToDoList(name: input!)
        DataController.sharedInstances.toDoLists.append(newList)
        
        firstTableView.reloadData()
        
        listNameTextField.text = nil
    }
    
    
    
    // Mark: Cell configuration
    
    
    var cellID = "firstCell"
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataController.sharedInstances.toDoLists.count
        
    }
    
    
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! FirstTableViewCell
        
//        let myRow = indexPath.row
//        
//        let toDoList = DataController.sharedInstances.toDoLists[myRow]
        
        
        cell.textLabel?.text = DataController.sharedInstances.toDoLists[indexPath.row].name
        
        
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let ListOfItemsVC = segue.destination as! ListOfItemsVC
        let index = firstTableView.indexPathForSelectedRow!.row
        ListOfItemsVC.list = DataController.sharedInstances.toDoLists[index]
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            DataController.sharedInstances.toDoLists.remove(at: indexPath.row)
            firstTableView.reloadData()
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
