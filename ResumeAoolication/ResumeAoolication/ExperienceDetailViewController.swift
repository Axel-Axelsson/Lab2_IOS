//
//  ExperienceDetailViewController.swift
//  ResumeAoolication
//
//  Created by Axel Axelsson on 2019-11-01.
//  Copyright © 2019 Axel Axelsson. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var NavTitle: UINavigationItem!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var ImageLabel: UIImageView!
    
    var name = String()
    var date = String()
    var imageName = String()
    
    override func viewWillAppear(_ animated: Bool) {
        NameLabel.text = name
        DateLabel.text = date
        NavTitle.title = name
        ImageLabel.image = UIImage(systemName: imageName)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
