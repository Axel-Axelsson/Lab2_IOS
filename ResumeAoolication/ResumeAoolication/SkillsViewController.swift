//
//  SkillsViewController.swift
//  ResumeAoolication
//
//  Created by Axel Axelsson on 2019-11-05.
//  Copyright © 2019 Axel Axelsson. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var AnimatedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimatedView.backgroundColor = UIColor.green
       
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1) {
                self.AnimatedView.backgroundColor = UIColor.red
        }
    }
    
    @IBAction func CloseButton(_ sender: Any) {
       
        
        dismiss(animated: true, completion: nil)
        
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
