//
//  SetWeightsViewController.swift
//  531Zorzo
//
//  Created by Zoltan Puchovsky on 15/06/2019.
//  Copyright © 2019 Zoltan Puchovsky. All rights reserved.
//

import UIKit

class SetWeightsViewController: UIViewController {
    
    
    @IBOutlet weak var squatOneRepMaxInput: UITextField!
    @IBOutlet weak var deadliftOneRepMaxInput: UITextField!
    @IBOutlet weak var benchpressOneRepMaxInput: UITextField!
    @IBOutlet weak var overheadpressOneRepMaxInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveWeights(_ sender: Any) {
        let squatOneRepMax = Double(squatOneRepMaxInput.text!)
        let deadliftOneRepMax = Double(deadliftOneRepMaxInput.text!)
        let benchpressOneRepMax = Double(benchpressOneRepMaxInput.text!)
        let overheadpressOneRepMax = Double(overheadpressOneRepMaxInput.text!)
        
        UserDefaults.standard.set(squatOneRepMax, forKey: "SquatOneRepMaxSaved")
        UserDefaults.standard.set(deadliftOneRepMax, forKey: "DeadliftOneRepMaxSaved")
        UserDefaults.standard.set(benchpressOneRepMax, forKey: "BenchpressOneRepMaxSaved")
        UserDefaults.standard.set(overheadpressOneRepMax, forKey: "OverheadpressOneRepMaxSaved")
    
        
    }
    
    
    @IBAction func resetWeights(_ sender: Any) {
    }
    

}
