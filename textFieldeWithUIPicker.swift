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
        countryPicker = UIPickerView()
        countryPicker.delegate = self
        selectCountryTxt.inputView = countryPicker
        selectCountryTxt.clearButtonMode = .whileEditing
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
