//
//  textFieldeWithUIPicker.swift
//  TaskApp
//
//  Created by smit on 25/12/24.
//

import Foundation
import UIKit


class textFieldeWithUIPicker:UIViewController {
    
    
    @IBOutlet weak var selectCountryTxt: UITextField!
    private  var countryPicker:UIPickerView!
    
    let country:[String] =  ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuad"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolBar = UIToolbar()
               toolBar.barStyle = UIBarStyle.default
               toolBar.isTranslucent = true
               toolBar.tintColor = UIColor.black
               toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.dismissPicker))
       let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        doneButton.tintColor = .systemBlue
              toolBar.setItems([ spaceButton, doneButton], animated: false)
              toolBar.isUserInteractionEnabled = true

        
        countryPicker = UIPickerView()
        countryPicker.delegate = self
        selectCountryTxt.clearButtonMode = .whileEditing
        selectCountryTxt.placeholder = "Select Country"
        
        selectCountryTxt.inputView = countryPicker
        selectCountryTxt.inputAccessoryView = toolBar
       
        
    }
    @objc func dismissPicker() {
            self.view.endEditing(true)
        }
    
}

extension textFieldeWithUIPicker:UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return  country[row]
 }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
     selectCountryTxt.text =  country[row]
        }
}
