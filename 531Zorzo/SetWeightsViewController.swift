//
//  SetWeightsViewController.swift
//  531Zorzo
//
//  Created by Zoltan Puchovsky on 15/06/2019.
//  Copyright © 2019 Zoltan Puchovsky. All rights reserved.
//

import UIKit

class SetWeightsViewController: UIViewController {
    
    // main text fields
    @IBOutlet weak var squatOneRepMaxInput: UITextField!
    @IBOutlet weak var deadliftOneRepMaxInput: UITextField!
    @IBOutlet weak var benchpressOneRepMaxInput: UITextField!
    @IBOutlet weak var overheadpressOneRepMaxInput: UITextField!
    

    
    @IBAction func saveWeights(_ sender: Any) {
        // saving the input
        let squatOneRepMax = Double(squatOneRepMaxInput.text!)
        let deadliftOneRepMax = Double(deadliftOneRepMaxInput.text!)
        let benchpressOneRepMax = Double(benchpressOneRepMaxInput.text!)
        let overheadpressOneRepMax = Double(overheadpressOneRepMaxInput.text!)
        
        UserDefaults.standard.set(squatOneRepMaxInput.text, forKey: "SquatOneRepMaxSaved")
        UserDefaults.standard.set(deadliftOneRepMaxInput.text, forKey: "DeadliftOneRepMaxSaved")
        UserDefaults.standard.set(benchpressOneRepMaxInput.text, forKey: "BenchpressOneRepMaxSaved")
        UserDefaults.standard.set(overheadpressOneRepMaxInput.text, forKey: "OverheadpressOneRepMaxSaved")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // displaying the saved data
        
        print(UserDefaults.standard.dictionaryRepresentation())
        
        let savedSquatOneRepMax = UserDefaults.standard.object(forKey: "SquatOneRepMaxSaved")
        if let squatOneRepMaxDisplayed = savedSquatOneRepMax as? String {
            squatOneRepMaxInput.text = squatOneRepMaxDisplayed
        }
        
        
        
        let savedDeadliftOneRepMax = UserDefaults.standard.object(forKey: "DeadliftOneRepMaxSaved")
        if let deadliftOneRepMaxDisplayed = savedDeadliftOneRepMax as? String {
            deadliftOneRepMaxInput.text = deadliftOneRepMaxDisplayed
        }
        
        
        let savedBenchpressOneRepMax = UserDefaults.standard.object(forKey: "BenchpressOneRepMaxSaved")
        if let benchpressOneRepMaxDisplayed = savedBenchpressOneRepMax as? String {
            benchpressOneRepMaxInput.text = benchpressOneRepMaxDisplayed
        }
        
        
        let savedOverheadpressOneRepMax = UserDefaults.standard.object(forKey: "OverheadpressOneRepMaxSaved")
        if let overheadpressOneRepMaxDisplayed = savedOverheadpressOneRepMax as? String {
            overheadpressOneRepMaxInput.text = overheadpressOneRepMaxDisplayed
        }
        
        
        
        
        
        
        
        
    }
    
    
    

}
