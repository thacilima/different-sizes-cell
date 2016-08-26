//
//  ViewController.swift
//  DifferentSizeCells
//
//  Created by Thaciana Soares Goes de Lima on 8/16/16.
//  Copyright © 2016 Thaciana Soares Goes de Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var array = ["1- Very very bid string for testing this functionality and get it working on the projects that I will need this", "2- Very very bid string for testing this functionality and get it working on the projects that I will need this very very bid string for testing this functionality and get it working on the projects that I will need this", "3- Very very bid string for testing this functionality and get it working on the projects that I will need this very very bid string for testing this functionality and get it working on the projects that I will need this very very bid string for testing this functionality and get it working on the projects that I will need this"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nibCell = UINib.init(nibName: "StackCell", bundle: nil)
        tableView.registerNib(nibCell, forCellReuseIdentifier: "StackCell")
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView,
                   cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TestTableViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier("StackCell", forIndexPath: indexPath) as! TestTableViewCell
        
        let a = array[indexPath.row]
        cell.label1.text = a
        cell.label1.textColor = UIColor(red: 114 / 255,
                                          green: 114 / 255,
                                          blue: 114 / 255,
                                          alpha: 1.0)
        
        cell.label0.text = "test header"
        cell.label2.text = "test footer"
        
        if indexPath.row == 1 {
            cell.label0.hidden = true
        }
        
        return cell
    }
}

