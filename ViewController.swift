//
//  ViewController.swift
//  Demo_1
//
//  Created by Ketul Patani on 15/10/14.
//  Copyright (c) 2014 Ketul Patani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableRows = 0
    @IBOutlet weak var myTableView: UITableView!
    
    var input : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
       // myTableView.registerClass(UITableViewCellStyle.self, forCellReuseIdentifier: "cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableRows
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = input[indexPath.row]
        return cell
    }
    
    @IBAction func addPressed(sender: AnyObject) {
        var alert : UIAlertView = UIAlertView()
        alert.title = "Enter the Description"
        alert.message = "Activity Details..."
        alert.addButtonWithTitle("Cancel")
        alert.addButtonWithTitle("Okay")
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alert.delegate = self
        alert.show()
    }
    
   func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
   {
    
            tableRows += 1
            input.append(alertView.textFieldAtIndex(0)!.text)
    
            myTableView.reloadData()
        
   }
    

}

