//
//  ViewController.swift
//  StormViewer
//
//  Created by Alex Lombry on 28/03/2017.
//  Copyright © 2017 Alex Lombry. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    // array of string
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // header title
        title = "Storm Viewer"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        
    }
    
    // number of rows in table view based on pictures arrays count
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    // generate row with pictures data
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        
        return cell
    }
    
    // show specifc image on selecting row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // try loading the detail view controller and typecasting it to be DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            // set its selected image property
            vc.selectedImage = pictures[indexPath.row]
            
            // push it onto the navigation controller
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

