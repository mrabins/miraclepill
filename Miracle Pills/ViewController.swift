//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Mark Rabins on 11/12/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityTextTield: UITextField!
    
    
    
    let states = ["Alabama","Alaska", "Arizona", "Arkansas",  "California","Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinos", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana","Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska","Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennesse", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
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
    
    @IBAction func stateButtonPressed(sender: UIButton) {
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        statePicker.isHidden = false
        buyButton.isHidden = true
        
    }
    
    @IBAction func buyNowButtonPressed(sender: UIButton) {
        successImage.isHidden = false
        disableUserInterface()
        
    }
    
    func disableUserInterface() {
        zipCodeTextField.isUserInteractionEnabled = false
        countryTextField.isUserInteractionEnabled = false
        nameTextField.isUserInteractionEnabled = false
        streetTextField.isUserInteractionEnabled = false
        cityTextTield.isUserInteractionEnabled = false
        statePickerButton.isUserInteractionEnabled = false
    }
}


// MARK: Data Source and Delegate for StatePickerView

extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        statePicker.isHidden = true
        buyButton.isHidden = false
        
    }
    
}
