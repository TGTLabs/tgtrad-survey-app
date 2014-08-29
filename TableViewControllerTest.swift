//
//  TableViewControllerTest.swift
//  guest-survey
//
//  Created by Luke.Gesior on 8/29/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//

//
//  ViewController.swift
//  SwiftTable
//
//  Created by Tim on 20/07/14.
//  Copyright (c) 2014 Charismatic Megafauna Ltd. All rights reserved.
//

import UIKit

class TableViewControllerTest: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellIdentifier = "cellIdentifier"
    //var tableData: [String] = ["One", "Two", "Three"]
    var model :SurveysModel = SurveysModel(JSON.parse("{\"surveys\":[{\"title\":\"Survey TITLE\"}, {\"title\":\"Survey TITLE2\"} ]}"))
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the UITableViewCell class with the tableView
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableViewDataSource methods
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return model.surveys.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel.text = self.model.surveys[indexPath.row].title
        
        return cell
        
    }
    
    // UITableViewDelegate methods
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        let alert = UIAlertController(title: "Item selected", message: "You selected item \(indexPath.row)", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: {
                (alert: UIAlertAction!) in println("An alert of type \(alert.style.hashValue) was tapped!")
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
}


