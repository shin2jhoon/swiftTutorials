//
//  ViewController.swift
//  SwiftTutorials
//
//  Created by JungHoon on 2017. 8. 1..
//  Copyright © 2017년 JungHoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var chooseBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet var entireView: UIView!
    @IBOutlet weak var segueBtn: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    @IBAction func ClickListener(_ sender: Any) {
        
//        if statePicker.isHidden {
//            statePicker.isHidden = false
//        }
//        
//        else{
//            statePicker.isHidden = true
//        }
        
//    entireView.isHidden = true
        
        
        
    }
    
    @IBAction func SegueListener(_ sender: Any) {
        self.performSegue(withIdentifier: "explictSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chooseBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
}

