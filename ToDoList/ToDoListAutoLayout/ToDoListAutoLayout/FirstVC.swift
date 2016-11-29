//
//  FirstVC.swift
//  ToDoListAutoLayout
//
//  Created by Othman AlOthman on 11/28/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import UIKit

class FirstVC: UIViewController , UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBAction func firstButton(_ sender: Any) {
        if firstTextField.text == "" {return}
        let input = firstTextField.text
        var newList = List(listName: input!)
        DataController.sharedInstances.listOfLists.append(newList)
        firstTableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataController.sharedInstances.listOfLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "first", for: indexPath)
        
        cell.textLabel?.text = DataController.sharedInstances.listOfLists[indexPath.row].listName
        
        return cell
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let SecondVC = segue.destination as! SecondVC
        let index = firstTableView.indexPathForSelectedRow?.row
        SecondVC.newList = DataController.sharedInstances.listOfLists[index!]
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
