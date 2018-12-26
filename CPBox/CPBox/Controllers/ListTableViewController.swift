//
//  ListTableViewController.swift
//  CPBox
//
//  Created by Jonathan Ho on 7/26/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//
import Foundation
import UIKit

class ListTableViewController: UITableViewController {
    static var lastSelected : Int = 0
    static var resources = [
        Resource(id: 1, title: "APIs", description: "Programming Documentation", image: (UIImage(named: "API")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 2, title: "Articles", description: "Programming Articles", image: (UIImage(named: "Article")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 3, title: "Books", description: "Programming Books", image: (UIImage(named: "Book")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 4, title: "Blogs", description: "Programming Blogs", image: (UIImage(named: "Blog")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 5, title: "Calendars", description: "Programming Calendars", image: (UIImage(named: "Calendar")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 6, title: "Courses", description: "Programming Courses", image: (UIImage(named: "Course")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 7, title: "Forum", description: "Programming Forums", image: (UIImage(named: "Forum")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 8, title: "Notebooks", description: "Programming Notebooks", image: (UIImage(named: "Notebook")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 9, title: "Tools", description: "Programming Tools", image: (UIImage(named:"Tool")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 10, title: "Tutorials", description: "Programming Tutorials", image: (UIImage(named: "Tutorial")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 11, title: "Videos", description: "Programming Videos", image: (UIImage(named: "Video")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
        Resource(id: 12, title: "Websites", description: "Programming Websites", image: (UIImage(named: "Website")?.resizeImage(targetSize: CGSize(width: 100, height: 70)))!),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView?.rowHeight = 100.0
        self.tableView.layoutMargins = UIEdgeInsets.zero
        self.tableView.separatorInset = UIEdgeInsets.zero
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }
        return 9
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listTableViewCell", for: indexPath) as! ListTableViewCell
        cell.layoutMargins = UIEdgeInsets.zero
        var resource : Resource
        if indexPath.section == 0 {
            resource = ListTableViewController.resources[indexPath.row]
        } else {
            resource = ListTableViewController.resources[indexPath.row+3]
        }
        cell.titleLabel?.text = resource.title
        cell.descriptionLabel?.text = resource.description
        cell.resourceImage?.image = resource.image
        if indexPath.section == 1 {
            cell.isUserInteractionEnabled = false
            cell.contentView.alpha = 0.3
        } else {
            cell.isUserInteractionEnabled = true
            cell.contentView.alpha = 1
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            ListTableViewController.lastSelected = indexPath.row
        } else {
            ListTableViewController.lastSelected = indexPath.row + 3
        }
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Coming Soon"
        }
        return ""
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 40
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.backgroundView?.backgroundColor = UIColor(red:0.97, green:0.40, blue:0.72, alpha:1.0)
        header.textLabel?.textColor = UIColor(red:0.15, green:0.99, blue:0.96, alpha:1.0)
        header.textLabel?.textAlignment = .center
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 25)
    }
}

extension UIImage {
    func resizeImage(targetSize: CGSize) -> UIImage {
        let newSize = CGSize(width: targetSize.width, height: targetSize.height)
        let rect = CGRect(x: 0, y: 0, width: targetSize.width, height: targetSize.height)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
