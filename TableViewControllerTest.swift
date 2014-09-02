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
    var model :SurveysModel = SurveysModel(JSON.parse("{\"surveys\":[{\"name\":\"alright\",\"owner\":\"z1231234611\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd2fe6d58830000ffe2cd\",\"__v\":0},{\"name\":\"dudey\",\"owner\":\"z1231234611\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd3542cda6d0000c6bebb\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"owner\":\"z1231234611\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd35f2cda6d0000c6bebd\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"owner\":\"z1231234611\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd39c161e6e00002a20c4\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"owner\":\"z1231234611\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd39c161e6e00002a20c6\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"owner\":\"z1231234611\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd39d161e6e00002a20c8\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd3c2161e6e00002a20ca\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd3dc4d90e90000961f69\",\"__v\":0},{\"name\":\"reallylongtitelmorethenthirtycharactersmethinks\",\"maxResponses\":100,\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"netWorth\":100,\"_id\":\"53fcd3dc4d90e90000961f6b\",\"__v\":0},{\"__v\":1,\"_id\":\"53fccfb8d3ad5a00009b1d52\",\"campaign\":\"worstEva\",\"costCenterId\":\"none\",\"maxResponses\":100,\"name\":\"colorsajkdkfalsdf468\",\"netWorth\":100,\"owner\":\"z1231234611\"},{\"__v\":1,\"_id\":\"53fccfccd3ad5a00009b1d54\",\"campaign\":\"worstEvasoomanycharacetsicankeeptypingforeverandkeepgoingandgoing\",\"costCenterId\":\"none\",\"maxResponses\":100,\"name\":\"rnadocalrisadfadisan_donnie\",\"netWorth\":100,\"owner\":\"z1231234611\",\"questions\":[]},{\"name\":\"my test name CREATED\",\"owner\":\"donnie\",\"maxResponses\":100,\"campaign\":\"some new campaign\",\"costCenterId\":\"123123\",\"netWorth\":1222,\"_id\":\"5400dc14a35e7548d53b8b6a\",\"__v\":0}]}"))
    
    
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
        
        cell.textLabel.text = self.model.surveys[indexPath.row].name
        println(self.model.surveys[indexPath.row].name)
        return cell
        
    }
    
    // UITableViewDelegate methods
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        
        
        let alert = UIAlertController(title: "Item selected", message: "You selected item \(indexPath.row) the owner is: \(self.model.surveys[indexPath.row].name), the maxResponses is: \(self.model.surveys[indexPath.row].maxResponses), the campaign is: \(self.model.surveys[indexPath.row].campaign), the costCenterId is:  \(self.model.surveys[indexPath.row].costCenterId), the netWorth is:  \(self.model.surveys[indexPath.row].netWorth)", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: {
                (alert: UIAlertAction!) in println("An alert of type \(alert.style.hashValue) was tapped!")
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
}


