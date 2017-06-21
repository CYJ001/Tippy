//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Chanel Johnson on 6/20/17.
//  Copyright © 2017 Chanel Johnson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var changeValueControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let tipPercentages = [0.18, 0.20, 0.25]
        let defaults = UserDefaults.standard
        let tipValue = defaults.double(forKey: "default_tip_percentage")
        changeValueControl.selectedSegmentIndex = tipPercentages.index(of: tipValue) ?? 0
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func changeDefaultValue(_ sender: Any) {
         let tipPercentages = [0.18, 0.20, 0.25]
        let defaults = UserDefaults.standard
        defaults.set(tipPercentages[changeValueControl.selectedSegmentIndex], forKey: "default_tip_percentage")
        defaults.synchronize()
    }

}
