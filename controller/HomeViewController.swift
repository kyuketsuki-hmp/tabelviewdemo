//
//  HomeViewController.swift
//  tableviewdemo2amo
//
//  Created by mic-student4 on 7/20/19.
//  Copyright © 2019 MIC. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var courses = [
        
        (courseName:"IOS Developer course" , students :[ "a", "b","c","d" ]),
        (courseName:"Android Developer course" , students :[ "a", "c","d" ]),
        (courseName:"web Developer course" , students :[  "a", "c","d" ]),
        (courseName:"design Developer course" , students :[ "a", "b","c","d" ])
        
  
   ]
    
    
//    var courses: [ [ String:[String] ] ] = [
//        ["IOS Developer course" :[ "a", "b","c","d" ]],
//        ["Android Developer course" :[  "a", "c","d"]] ,
//        ["web Developer course" :[  "a", "c","d" ]] ,
//        ["design Developer course" :[  "d", "e" ]]
//    ]
//
//
    //course
    //1-4
    //2-6
    //3-8
    //4-3
    
    
    
    
    
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableview.dataSource = self
        tableview.delegate = self
        
        
    }
    
    //mark; table ciew datasource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return courses.count
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        let course = courses[indexPath.section]
//        let students = course[course.key.first!]!
//
//        return students.count
        
        return courses[section].students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.section,indexPath.row)
        
//        let course = courses[indexPath.section]
//        let students = course[course.key.first!]!
//
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell1")
        
        let course = courses[indexPath.section]
        let student = course.students
        let currentstudent = student[indexPath.row]
        
        cell?.textLabel?.text = currentstudent
        return cell!
    }
    
    
    //mark tableview delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailsegue", sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        
        
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return courses[section].courseName
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "total stu \(courses[section].students.count)"
    }
    
}
