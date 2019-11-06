//
//  ExperienceTableViewController.swift
//  ResumeAoolication
//
//  Created by Axel Axelsson on 2019-11-01.
//  Copyright © 2019 Axel Axelsson. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var WorkExperiences = [WorkExperience]()
    var Educations = [Education]()
    var Experiences: [[Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WorkExperiences.append(WorkExperience(Name : "Apple", Date: "1980 - 1990"))
        WorkExperiences.append(WorkExperience(Name : "Special Forces", Date: "classified"))
        WorkExperiences.append(WorkExperience(Name : "Vegas Golden knights", Date : "2020 -"))
        
        Educations.append(Education(Name: "Höreda lågstadie", Date: "when i was young"))
        Educations.append(Education(Name: "Present", Date: "Every day is a new lession"))
        //Educations.append(Education(Name: "", Date: ""))
        
        Experiences = [Educations, WorkExperiences]
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Experiences[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceTableViewCell", for: indexPath) as! ExperienceTableViewCell
        
       if let education = Experiences[indexPath.section][indexPath.row] as? Education {
            cell.NameLabel.text = education.Name
            cell.DateLabel.text = education.Date
            cell.WorkImage.image = UIImage(systemName: education.Image)
        }
        if let work = Experiences[indexPath.section][indexPath.row] as? WorkExperience {
            cell.NameLabel.text = work.Name
            cell.DateLabel.text = work.Date	
            cell.WorkImage.image = UIImage(systemName: work.Image)
        }
        
        
        // Configure the cell...

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        if section == 0{
            return "Education"
        }
        if section == 1{
            return "Work Experience"
        }        
        return "hmm"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier	== "ExperienceSegue",
                let destination = segue.destination as? ExperienceDetailViewController,
            let experienceIndex = self.tableView.indexPathForSelectedRow
            {
                if let education = Experiences[experienceIndex.section][experienceIndex.row] as? Education {
                    destination.name = education.Name
                    destination.date = education.Date
                    destination.imageName = education.Image
                }
                if let work = Experiences[experienceIndex.section][experienceIndex.row] as? WorkExperience {
                    destination.name = work.Name
                    destination.date = work.Date
                    destination.imageName = work.Image
                }
                
                
            }
            	
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
