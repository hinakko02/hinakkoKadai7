//
//  AddViewController.swift
//  HinakkoKadai7
//
//  Created by Hina on 2023/05/29.
//

import UIKit

class AddViewController: UIViewController {


    @IBOutlet weak var textField1: UITextField!

    @IBOutlet weak var textField2: UITextField!

    @IBOutlet weak var resultLabel: UILabel!


    @IBAction func calculateButton(_ sender: UIButton) {

        guard let text1Value = Int(textField1.text ?? "") else {
            presentAlert(message: "整数を入力して下さい")
            return
        }
        guard let text2Value = Int(textField2.text ?? "") else {
            presentAlert(message: "整数を入力して下さい")
            return
        }
        let resultValue = text1Value + text2Value
        resultLabel.text = String("\(resultValue)")
        view.endEditing(true)
    }

    func presentAlert(message: String?){
        let alert = UIAlertController(title: "課題7", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true ,completion: nil)
    }



}
