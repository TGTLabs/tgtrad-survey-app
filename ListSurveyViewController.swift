//
//  TableViewControllerTest.swift
//  guest-survey
//
//  Created by Luke.Gesior on 8/29/14.
//  Copyright (c) 2014 Daniel.Chahla. All rights reserved.
//


import UIKit

class ListSurveyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellIdentifier = "SurveyCell"
    var model :SurveysModel = SurveysModel(JSON.parse("{\"surveys\":[{\"name\":\"Survey Number 1\",\"owner\":\"Daniel Chahla\",\"maxResponses\":200,\"campaign\":\"Test Survey\",\"costCenterId\":\"none\",\"netWorth\":100,\"logoUrl\":\"luke.com\",\"status\":\"open\",\"_id\":\"5405e4324b6a27375d7420fa\",\"questions\":[{\"title\":\"Best Color?\",\"_type\":\"image\",\"_id\":\"5405e4324b6a27375d7420fc\",\"answers\":[\"blue\",\"red\"]},{\"title\":\"Favorite Bird?\",\"_id\":\"5405e4324b6a27375d7420fb\",\"_type\":\"text\", \"answers\":[\"African Swallow\",\"European Swallow\"]}],\"__v\":0},{\"name\":\"Survey Number 2\",\"owner\":\"Sir Daniel Chahla\",\"maxResponses\":200,\"campaign\":\"Test Survey 2\",\"costCenterId\":\"none\",\"netWorth\":300,\"logoUrl\":\"deluxe.com\",\"status\":\"open\",\"_id\":\"5405e49b606bb3415df31e17\",\"questions\":[{\"title\":\"Greatest NFL Team?\",\"_id\":\"5405e49b606bb3415df31e19\",\"_type\":\"text\",\"answers\":[\"Vikings\",\"Packers\"]},{\"title\":\"Ambiturner?\",\"_id\":\"5405e49b606bb3415df31e18\",\"_type\":\"text\",\"answers\":[\"Yes\",\"No\"]}],\"__v\":0}]}"))
    
    
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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.surveys.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel?.text = self.model.surveys[indexPath.row].name
//        println(self.model.surveys[indexPath.row].name)
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
        
       self.performSegueWithIdentifier("ListDetailSurvey", sender: "stuff")
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if(segue.identifier == "ListDetailSurvey"){
        println("beginning segue to SurveyHomeController")
        
        var surveyHomeController: SurveyHomeController = segue.destinationViewController as SurveyHomeController
        var rowNumber = tableView.indexPathForSelectedRow()?.row
        var selectedSurvey = self.model.surveys[rowNumber!]
        surveyHomeController.model = selectedSurvey
        surveyHomeController.questionIndex = 0
    }
    }
    // animation
    func tableView(tableView: UITableView!, willDisplayCell cell: UITableViewCell!, forRowAtIndexPath indexPath: NSIndexPath!) {
        cell.layer.transform = CATransform3DMakeScale(0.1,0.1,1)
        UIView.animateWithDuration(0.45, animations: {
            cell.layer.transform = CATransform3DMakeScale(1,1,1)
        })
    }
        
    
    
}


