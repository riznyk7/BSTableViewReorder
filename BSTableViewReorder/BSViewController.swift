//
//  BSViewController.swift
//  BSTableViewReorder
//
//  Created by Bartłomiej Semańczyk on 23/09/15.
//  Copyright © 2015 Bartłomiej Semańczyk. All rights reserved.
//

import UIKit

private let CellIdentifier = "CellIdentifier"

class BSViewController: UIViewController, UITableViewDataSource, BSTableViewReorderDelegate {
    
    var tableViewCanReorder = true
    var snapshotOpacity: Float = 0.3
    
    @IBOutlet var tableView: BSTableViewReorder!
    
    var data = [
        ["zero", "one jsdhfj shfj hdsf jdshfjdsgfjdsjfg dsjhfg dhsgf hjdsgfhjdsgfhjdgs jhfgds hjfghjdsg"],
        ["two", "three", "four", "fife", "six"],
        ["seven", "eight", "nine", "ten", "eleven"],
        ["twelf", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reorderDelegate = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section: \(section)"
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! BSTableViewCell
        
        cell.label?.text = data[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 43
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        
        let obj = data[sourceIndexPath.section][sourceIndexPath.row]
        data[sourceIndexPath.section].removeAtIndex(sourceIndexPath.row)
        data[destinationIndexPath.section].insert(obj, atIndex: destinationIndexPath.row)
    }
    
    func transformForSnapshotOfReorderingCellAtIndexPath(indexPath: NSIndexPath) -> CGAffineTransform {
        return CGAffineTransformMakeScale(1.1, 2.1)
    }
}

class BSTableViewCell: UITableViewCell {
    @IBOutlet var label: UILabel!
}