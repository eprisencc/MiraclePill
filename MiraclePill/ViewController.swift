//
//  ViewController.swift
//  MiraclePill
//
//  Created by Jonathan L. on 7/15/17.
//  Copyright © 2017 Jonathan L. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
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
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTextField.isHidden = true
        streetAddressLabel.isHidden = true
        streetAddressTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        buyNowBtn.isHidden = true
        
        successImage.isHidden = false
    }
    
}

