//
//  ThirdVC.swift
//  ToDoListAutoLayout
//
//  Created by Othman AlOthman on 11/28/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    var newItem: Item!
    
    
    
    
    @IBOutlet weak var thirdTextView: UITextView!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBAction func thirdButton(_ sender: Any) {
        if thirdTextField.text == "" {return}
        let input = thirdTextField.text
        newItem.itemDescription = input!
        thirdTextView.text = newItem.itemDescription
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdTextView.text = newItem.itemDescription
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
