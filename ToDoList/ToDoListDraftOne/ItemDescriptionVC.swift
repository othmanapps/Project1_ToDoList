//
//  ItemDescriptionVC.swift
//  ToDoListDraftOne
//
//  Created by Othman AlOthman on 11/16/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import UIKit

class ItemDescriptionVC: UIViewController, UITextViewDelegate  {
    
    var item: ToDoItem!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    @IBOutlet weak var descriptionTextView: UITextView!


    @IBAction func addDescription(_ sender: Any) {
        let input = descriptionTextField.text
        item.description = input!
        descriptionTextView.text = item.description
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "secondBack" {
            let ListOfItemsVC = segue.destination as! ListOfItemsVC
            
            
            
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
